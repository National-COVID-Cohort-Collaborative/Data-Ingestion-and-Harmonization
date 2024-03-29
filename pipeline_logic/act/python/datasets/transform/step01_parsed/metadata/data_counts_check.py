from transforms.api import transform_df, Input, Output, Check
from transforms import expectations as E
from pyspark.sql import functions as F
from pyspark.sql import types as T

domains = {
    'CONCEPT_DIMENSION': Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/transform/01 - parsed/concept_dimension'),
    'OBSERVATION_FACT': Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/transform/01 - parsed/observation_fact'),
    'PATIENT_DIMENSION': Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/transform/01 - parsed/patient_dimension'),
    'VISIT_DIMENSION': Input('/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/transform/01 - parsed/visit_dimension'),
}


@transform_df(
    Output(
        "/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/metadata/data_counts_check",
        checks=[
            Check(E.count().gt(0), 'Valid data counts file provided', on_error='WARN'),
            Check(E.col('delta_row_count').equals(0), 'Parsed row count equals loaded row count', on_error='WARN'),
        ]
    ),
    site_counts=Input("/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: ACT/Site 411/metadata/data_counts_parsed"),
    **domains
)
def my_compute_function(ctx, site_counts, **domains):

    data = []
    for domain_name, domain_df in domains.items():
        row_count = domain_df.count()
        data.append((domain_name.lower(), row_count))

    # Create dataframe with row counts for each domain
    df = ctx.spark_session.createDataFrame(
        data,
        ['domain', 'parsed_row_count']
    )

    try:
        # Join in row counts from DATA_COUNT csv
        for col_name in site_counts.columns:
            site_counts = site_counts.withColumnRenamed(col_name, col_name.upper())
        df = df.join(site_counts, df.domain == F.lower(site_counts.TABLE_NAME), 'left')
        df = df.withColumn("delta_row_count", df.ROW_COUNT - df.parsed_row_count)
        df = df.selectExpr("domain", "cast(ROW_COUNT as long) as loaded_row_count", "parsed_row_count", "delta_row_count")

    except:
        schema = T.StructType([
            T.StructField("domain", T.StringType(), True),
            T.StructField("loaded_row_count", T.LongType(), True),
            T.StructField("parsed_row_count", T.LongType(), True),
            T.StructField("delta_row_count", T.DoubleType(), True),
        ])
        df = ctx.spark_session.createDataFrame([], schema)

    return df
