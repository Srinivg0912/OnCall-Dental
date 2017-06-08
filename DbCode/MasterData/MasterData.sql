

-- DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'));


-- Specialization

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('3D Imaging','3D_IMAGING',null,@StatusActiveId,'3D Imaging',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Dental Implant','DENTAL_IMPLANT',null,@StatusActiveId,'Dental Implant',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Gum Disease','GUM_DISEASE',null,@StatusActiveId,'Gum Disease',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Root Canals','ROOT_CANALS',null,@StatusActiveId,'Root Canals',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Botox','BOTOX',null,@StatusActiveId,'Botox',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Dentures','DENTURES',null,@StatusActiveId,'Dentures',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Invisalign','INVISALIGN',null,@StatusActiveId,'Invisalign',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Snoring Sleep Apnea','SNORING_SLEEP_APNEA',null,@StatusActiveId,'Snoring Sleep Apnea',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Braces','BRACES',null,@StatusActiveId,'Braces',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Facial Pain','FACIAL_PAIN',null,@StatusActiveId,'Facial Pain',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Kid Dentistry','KID_DENTISTRY',null,@StatusActiveId,'Kid Dentistry',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Teeth Whitening','TEETH_WHITENING',null,@StatusActiveId,'Teeth Whitening',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Same day Crowns','SAME_DAY_CROWNS',null,@StatusActiveId,'Same day Crowns',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Dermal Fillers','DERMAL_FILLERS',null,@StatusActiveId,'Dermal Fillers',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Laser Dentistry','LASER_DENTISTRY',null,@StatusActiveId,'Laser Dentistry',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('TMJ','TMJ_1',null,@StatusActiveId,'TMJ',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Cosmetics','COSMETICS',null,@StatusActiveId,'Cosmetics',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Family Dentistry','FAMILY_DENTISTRY',null,@StatusActiveId,'Family Dentistry',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Microscopic Dentistry','MICROSCOPIC_DENTISTRY',null,@StatusActiveId,'Microscopic Dentistry',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_specialization (
SpecializationName, SpecializationCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('Wisdom Teeth','WISDOM_TEEH',null,@StatusActiveId,'Wisdom Teeth',CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Contry

INSERT INTO tbl_country (
CountryName, CountryCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ('America','US',@StatusActiveId,'America',CURRENT_DATE, -1, CURRENT_DATE, -1);


-- States

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Alabama','AL',@StatusActiveId,'Alabama',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Alaska','AK',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);



INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'American Samoa','AS',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Arizona','AZ',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Arkansas','AR',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'California','CA',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Colorado','CO',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Connecticut','CT',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Delaware','DE',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Florida','FL',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Georgia','GA',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Guam','GU',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Hawaii','HI',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Idaho','ID',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Illinois','IL',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Indiana','IN',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Iowa','IA',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Kansas','KS',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Kentucky','KY',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Louisiana','LA',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Maine','ME',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_states (
CountryId,StateName, StateCode,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT CountryId FROM tbl_country WHERE CountryCode = 'US')
,'Maryland','MD',@StatusActiveId,'Alaska',CURRENT_DATE, -1, CURRENT_DATE, -1);



