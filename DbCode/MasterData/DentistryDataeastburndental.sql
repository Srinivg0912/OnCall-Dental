

DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'))


-- Dentistry Info

INSERT INTO tbl_dentistry (DentistryName,Website,AboutPractice,URLPrefix,LogoFileName,EmailId,RecoveryEmailId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ('Oncall Mobile','www.eastburndental.com'
		,'Modern technology, regular training, and an eye on current developments in dentistry research: we do everything to ensure your teeth get expert treatment. Our relaxed atmosphere and friendly service go hand in hand – naturally.'
		,'oncallmobile','oncallmobile.jpg','eastburnwilliamg@bellsouth.net','eastburnwilliamg@bellsouth.net'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location

INSERT INTO tbl_dentistry_location (DentistryId,Location,Longitude,Latitude,Address1,Address2,StateId,
									CountryId,ZipCode,LocationTypeId,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,'Alabama','-88.167561','30.711796','5368 Zeigler Blvd','Mobile AL'
		,(SELECT StateId From tbl_states WHERE StateCode='AL')
		,(SELECT CountryId From tbl_country WHERE CountryCode='US')
		,'36608',(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='LOCATION_TYPE_HEAD_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location Contact

INSERT INTO tbl_dentistry_location_contacts (DentistryId,ContactName,PhoneNumber,Mobile,EmailId,ContactTypeId
											,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,'Dr. William G Eastburn','251-725-4997',NULL,'eastburnwilliamg@bellsouth.net'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='CONTACT_TYPE_PRIMARY')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Office Hours

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SUNDAY')
		,'10:00 AM','04:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_MONDAY')
		,'08:15 AM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_TUESDAY')
		,'08:15 AM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_WEDNESDAY')
		,'08:15 AM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_THURSDAY')
		,'08:15 AM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_FRIDAY')
		,'10:00 AM','04:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SATURDAY')
		,'10:00 AM','04:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Staff

INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,'William G','Eastburn'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_MALE')
		,NULL,
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DMD')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_OWNER')
		,26,'eastburn.jpg','DR. EASTBURN WAS BORN IN MOBILE ALABAMA AND GRADUATED FROM MCGILL-TOOLEN HIGH SCHOOL. DR. EASTBURN FURTHERED HIS EDUCATION AT THE UNIVERSITY OF SOUTH ALABAMA. AFTER GRADUATION FROM THE UNIVERSITY OF SOUTH ALABAMA, DR. EASTBURN ATTENDED DENTAL SCHOOL AT THE UNIVERSITY OF ALABAMA AND GRADUATED IN 1991. DR. EASTBURN DID A ONE YEAR RESIDENCE AT THE VETERANS HOSPITAL IN NEW ORLEANS, LOUISIANA.
IN JULY OF 1992 DR. EASTBURN RETURNED TO MOBILE TO START HIS DENTAL PRACTICE. DR. EASTBURN IS A PAST OFFICER IN THE MOBILE DENTAL SOCIETY, AND ALSO HELD THE POSITION OF SECRETARY-TREASURER, VICE PRESIDENT, PRESIDENT ELECT, AND PRESIDENT. DR. EASTBURN ALSO SERVED ON THE BOARD OF TRUSTEES OF THE ALABAMA DENTAL SOCIETY, AS WELL AS CHAIRMAN AND MEMBER OF MANY COMMITTEES WITHIN THE MOBILE DENTAL SOCIETY.DR. EASTBURN CURRENTLY SERVES ON THE LEADERSHIP COUNCIL BOARD TO THE DEAN OF THE UNIVERSITY OF ALABAMA SCHOOL OF DENTISTRY.
 DR. EASTBURN IS MARRIED TO A WONDERFUL LADY OF OVER 21 YEARS AN HAS 4 CHILDREN.',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry User

INSERT INTO tbl_dentistry_user (DentistryId,DentistryStaffId,UserName,Password,AccessRoleId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,(SELECT DentistryStaffId FROM tbl_dentistry_staff WHERE DentistryId=(SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile'))
		,'oncallmobile','oncall@123'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='ROLE_DENTIST_ADMINISTRATOR')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Gallery

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,'Office Photo','esoffice1.jpg'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Oncall Mobile')
		,'Office Photo','esoffice2.jpg'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


------below is not needed---------------



