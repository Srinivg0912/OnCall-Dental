
-- Lookup Type (STATUS)
INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'STATUS',null, 'Status',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='STATUS'),
'Active','ACTIVE',null,'Active',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='STATUS'),
'InActive','INACTIVE',null,'InActive',CURRENT_DATE, -1, CURRENT_DATE, -1);

-- DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'))
------------------------------------------------------------------------------------------------------------------------------------------
-- Lookup Type (Gender)
INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'GENDER',null, 'Gender',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='GENDER'),
'Male','GENDER_MALE',null,@StatusActiveId,'Male',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='GENDER'),
'Female','GENDER_FEMALE',null,@StatusActiveId,'Female',CURRENT_DATE, -1, CURRENT_DATE, -1);
-----------------------------------------------------------------------------------------------------------------------------------------
--Degree
INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'DEGREE',null, 'Degree',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DEGREE'),
'DDS','DEGREE_DDS',null,@StatusActiveId,'DDS',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DEGREE'),
'DMD','DEGREE_DMD',null,@StatusActiveId,'DMD',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DEGREE'),
'DDS/MD','DEGREE_DDSMD',null,@StatusActiveId,'DDS/MD',CURRENT_DATE, -1, CURRENT_DATE, -1);	


INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DEGREE'),
'MD','DEGREE_MD',null,@StatusActiveId,'MD',CURRENT_DATE, -1, CURRENT_DATE, -1);		
------------------------------------------------------------------------------------------------------------------------------------------
----Spcialist Type

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'SPECIALIST',null, 'Specialist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Oral Medicine','SPECIALIST_ORALMEDICINE',null,@StatusActiveId,'Oral Medicine',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Oral pathologist','SPECIALIST_ORALPATHOLOGIST',null,@StatusActiveId,'Oral pathologist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Oral surgeon','SPECIALIST_ORALSURGEON',null,@StatusActiveId,'Oral surgeon',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Orthodontist','SPECIALIST_ORTHODONIST',null,@StatusActiveId,'Orthodontist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Endodontist','SPECIALIST_ENDODONIST',null,@StatusActiveId,'Endodontist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Pediatric Dentist','SPECIALIST_PEDIATRICDENTIST',null,@StatusActiveId,'Pediatric Dentist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Periodontist','SPECIALIST_PERIODONIST',null,@StatusActiveId,'Periodontist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Prosthodontist','SPECIALIST_PROSTHODONTIST',null,@StatusActiveId,'Prosthodontist',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='SPECIALIST'),
'Radiologist','SPECIALIST_RADIOLOGIST',null,@StatusActiveId,'Radiologist',CURRENT_DATE, -1, CURRENT_DATE, -1);

------------------------------------------------------------------------------------------------------------------------------------------
----designation

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'DESIGNATION',null, 'Designation',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DESIGNATION'),
'Owner','DESIGNATION_OWNER',null,@StatusActiveId,'Owner',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DESIGNATION'),
'Partner','DESIGNATION_PARTNER',null,@StatusActiveId,'Partner',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='DESIGNATION'),
'Associate','DESIGNATION_ASSOCIATE',null,@StatusActiveId,'Associate',CURRENT_DATE, -1, CURRENT_DATE, -1);
--------------------------------------------------------------------------------------------------------------------------------------------
---Weekdays	

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'WEEKDAY',null, 'Weekday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Sunday','WEEKDAY_SUNDAY',null,@StatusActiveId,'Sunday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Monday','WEEKDAY_MONDAY',null,@StatusActiveId,'Monday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Tuesday','WEEKDAY_TUESDAY',null,@StatusActiveId,'Tuesday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Wednesday','WEEKDAY_WEDNESDAY',null,@StatusActiveId,'Wednesday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Thursday','WEEKDAY_THURSDAY',null,@StatusActiveId,'Thursday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Friday','WEEKDAY_FRIDAY',null,@StatusActiveId,'Friday',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='WEEKDAY'),
'Saturday','WEEKDAY_SATURDAY',null,@StatusActiveId,'Saturday',CURRENT_DATE, -1, CURRENT_DATE, -1);

-----------------------------------------------------------------------------------------------------------------------------------------------
--Roles

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'ROLE',null, 'Role',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Applicaton Administrator','ROLE_APPLICATION_ADMINISTRATOR',null,@StatusActiveId,'Applicaton Administrator',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Applicaton Manager','ROLE_APPLICATION_MANAGER',null,@StatusActiveId,'Applicaton Manager',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Applicaton Executive','ROLE_APPLICATION_EXECUTIVE',null,@StatusActiveId,'Applicaton Executive',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Dentist Administrator','ROLE_DENTIST_ADMINISTRATOR',null,@StatusActiveId,'Dentist Administrator',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Dentist Manager','ROLE_DENTIST_MANAGER',null,@StatusActiveId,'Dentist Manager',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Dentist Executive','ROLE_DENTIST_EXECUTIVE',null,@StatusActiveId,'Dentist Executive',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='ROLE'),
'Patient','ROLE_PATIENT',null,@StatusActiveId,'Patient',CURRENT_DATE, -1, CURRENT_DATE, -1);

-----------------------------------------------------------------------------------------------------------------------------------------------
---LocationType

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'LOCATION_TYPE',null, 'Location Type',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='LOCATION_TYPE'),
'Head Office','LOCATION_TYPE_HEAD_OFFICE',null,@StatusActiveId,'Head Office',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='LOCATION_TYPE'),
'Branches','LOCATION_TYPE_BRANCHES',null,@StatusActiveId,'Branches',CURRENT_DATE, -1, CURRENT_DATE, -1);

----------------------------------------------------------------------------------------------------------------------------------------------

--Contact type

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'CONTACT_TYPE',null, 'Contact Type',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='CONTACT_TYPE'),
'Primary','CONTACT_TYPE_PRIMARY',null,@StatusActiveId,'Primary',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='CONTACT_TYPE'),
'secondary','CONTACT_TYPE_SECONDARY',null,@StatusActiveId,'Secondary',CURRENT_DATE, -1, CURRENT_DATE, -1);

---------------------------------------------------------------------------------------------------------------------------------------------


--Image type

INSERT INTO tbl_lookup_type (
LookupType,ImageFileName, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES (
'IMAGE_TYPE',null, 'Image Type',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='IMAGE_TYPE'),
'Office','IMAGE_TYPE_OFFICE',null,@StatusActiveId,'Office',CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='IMAGE_TYPE'),
'Staff','IMAGE_TYPE_STAFF',null,@StatusActiveId,'Staff',CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_lookup_value (
LookupTypeId, LookupValue, LookupCode,ImageFileName,StatusId, Description,  CreatedDate, CreatedBy, LastUpdateDate, LastUpdatedBy)
VALUES ((SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType='IMAGE_TYPE'),
'Event','IMAGE_TYPE_EVENT',null,@StatusActiveId,'Event',CURRENT_DATE, -1, CURRENT_DATE, -1);


---------------------------------------------------------------------------------------------------------------------------------------------
