CREATE TABLE `/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: TriNetX/raw_trinetx/Site 777/transform/04 - domain mapping/note` AS	
   SELECT 
          * 
        , cast(conv(substr(hashed_id, 1, 15), 16, 10) as bigint) & 2251799813685247 as note_id_51_bit
    FROM (
            SELECT DISTINCT 
            n.hashed_id
            , n.note_id as site_note_id
            , n.person_id as site_person_id
            , n.note_date
            , n.note_datetime
            , n.note_type_concept_id
            , n.note_class_concept_id
            , n.note_title 
            , n.note_text
            , n.encoding_concept_id
            , n.language_concept_id
            , CAST(null as long) as provider_id
            , n.visit_occurrence_id as site_visit_occurrence_id
            , CAST(null as long) as visit_detail_id
            , n.visit_detail_id as site_visit_detail_id
            , n.note_source_value
            , CAST(n.data_partner_id as int) as data_partner_id
            , n.payload
            FROM
            (
                SELECT DISTINCT 
                * 
                , md5(concat_ws( ';', 
                    coalesce(note_id, ''),
                    coalesce(person_id, ''),
                    coalesce(note_date, ''),
                    coalesce(note_datetime, ''),
                    coalesce(note_class_concept_id, ''),
                    coalesce(note_type_concept_id, ''),
                    coalesce(note_class_concept_id, ''),
                    coalesce(encoding_concept_id, ''),
                    coalesce(language_concept_id, ''),
                    coalesce(note_source_value, '')
                    )) as hashed_id   
                    FROM `/UNITE/Data Ingestion & OMOP Mapping/Source Data Model: TriNetX/raw_trinetx/Site 777/transform/03 - prepared/note` n
                    WHERE note_id IS NOT NULL
            ) n
    )