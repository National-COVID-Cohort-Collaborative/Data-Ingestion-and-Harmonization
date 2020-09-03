--------------------------------------------------------
  --Project : N3C
  --DDL and data for Table CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK
  --Date: June 6, 2020
  --Description : PCORnet Encounter Admitting Source values mapped to OMOP concept ids
  --Reviewers : Clair Blacketer, Kristin Kostka, SMEs, Samvit, DI&H team
  --Author: Stephanie Hong
  -- Edit History:
  -- Dates: Initials: Description: 
  -- 6/25/20 SHONG : updated correction - 'PCORnet','ENCOUNTER','OT','Other', 45878142,'Other (concept_id = 45878142)
  -- 8/30/20 SHONG : Update for v1
--------------------------------------------------------


CREATE TABLE CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK 
(
  CDM_SOURCE VARCHAR2(20 BYTE) 
, CDM_TBL VARCHAR2(20 BYTE) 
, SRC_ADMITTING_SOURCE_TYPE VARCHAR2(20 BYTE) NOT NULL 
, SRC_TYPE_DISCRIPTION VARCHAR2(100 BYTE) 
, TARGET_CONCEPT_ID NUMBER(*, 0) 
, TARGET_CONCEPT_NAME VARCHAR2(255 BYTE) 
, TARGET_DOMAIN_ID VARCHAR2(20 BYTE) 
, TARGET_VOCABULARY_ID VARCHAR2(30 BYTE) 
, TARGET_CONCEPT_CLASS_ID VARCHAR2(20 BYTE) 
, TARGET_STANDARD_CONCEPT VARCHAR2(1 BYTE) 
, TARGET_CONCEPT_CODE VARCHAR2(50 BYTE) 
) 
;

Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','AF','Adult  Foster  Home',8882,'(visit) Adult Living Care Facility (concept_id = 8882)','Visit','CMS Place of Service','Visit','S','35');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','AL','Assisted  Living  Facility',8615,'(visit) Assisted Living Facility (concept_id = 8615)','Visit','CMS Place of Service','Visit','S','13');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','AV','Ambulatory  Visit',581478,'(visit) Ambulance Visit (concept_id = 581478)','Visit','Visit','Visit','S','OMOP4822457');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','ED','Emergency  Department',8870,'(visit) Emergency Room - Hospital (concept_id = 8870)','Visit','CMS Place of Service','Visit','S','23');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','HH','Home  Health',38004519,'(visit) Home Health Agency (concept_id = 38004519)','Visit','Medicare Specialty','Visit','S','A4');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','HO','Home  /  Self  Care',32759,'(visit) Home isolation (concept_id = 32759)','Visit','Visit','Visit','S','OMOP4873970');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','HS','Hospice',8546,'(visit) Hospice (concept_id = 8546)','Visit','CMS Place of Service','Visit','S','34');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','IH','Intra-hospital',0,'IH=Intra-hospital','gap','-','-','-','-');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','IP','Other  Acute  Inpatient  Hospital',0,'IP=Other  Acute  Inpatient  Hospital','gap','-','-','-','-');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','NH','Nursing  Home  (Includes  ICF)',8676,'(visit) Nursing Facility (concept_id = 8676)','Visit','CMS Place of Service','Visit','S','32');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','NI','No  information',0,'Gap','gap','-','-','-','-');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','OT','Other',45878142,'(other_ni_unk) Other (concept_id = 45878142)','Meas Value','LOINC','Answer','S','LA46-8');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','RH','Rehabilitation  Facility',38004696,'(visit) Radiation Therapy Center (concept_id = 38004696)','Visit','Medicare Specialty','Visit','S','74');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','RS','Residential  Facility',0,'GAP','gap','-','-','-','-');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','SN','Skilled  Nursing  Facility',8863,'(visit) Skilled Nursing Facility (concept_id = 8863)','Visit','CMS Place of Service','Visit','S','31');
Insert into CDMH_STAGING.P2O_ADMITTING_SOURCE_XWALK (CDM_SOURCE,CDM_TBL,SRC_ADMITTING_SOURCE_TYPE,SRC_TYPE_DISCRIPTION,TARGET_CONCEPT_ID,TARGET_CONCEPT_NAME,TARGET_DOMAIN_ID,TARGET_VOCABULARY_ID,TARGET_CONCEPT_CLASS_ID,TARGET_STANDARD_CONCEPT,TARGET_CONCEPT_CODE) values ('PCORnet','ENCOUNTER','UN','Unknown',45877986,'(other_ni_unk) Unknown (concept_id = 45877986)','Meas Value','LOINC','Answer','S','LA4489-6');
