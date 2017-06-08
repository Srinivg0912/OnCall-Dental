

DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'))


-- Dentistry Info

INSERT INTO tbl_dentistry (DentistryName,Website,AboutPractice,URLPrefix,LogoFileName,EmailId,RecoveryEmailId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ('Pacific Northwest Smiles','www.pacificnwsmiles.com'
		,'If you are looking for a quality Mill Creek dentist, look no further! We establish caring, lasting relationship with our patients while providing healthy teeth and smiles to last a lifetime. To achieve that, Pacific Northwest Smiles offers a variety of dental services to enhance your oral health, outer appearance, self-confidence, and inner well-being'
		,'pacificnwsmiles',NULL,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location

INSERT INTO tbl_dentistry_location (DentistryId,Location,Longitude,Latitude,Address1,Address2,StateId,
									CountryId,ZipCode,LocationTypeId,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,'Washington','-122.220813','47.860221','15130 Main Street','Suite 210Mill Creek WA'
		,(SELECT StateId From tbl_states WHERE StateCode='WA')
		,(SELECT CountryId From tbl_country WHERE CountryCode='US')
		,'98012',(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='LOCATION_TYPE_HEAD_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location Contact

INSERT INTO tbl_dentistry_location_contacts (DentistryId,ContactName,PhoneNumber,Mobile,EmailId,ContactTypeId
											,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,'Dr.Darren Greenhalgh','425-357-6400',NULL,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='CONTACT_TYPE_PRIMARY')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Office Hours

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SUNDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_MONDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_TUESDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_WEDNESDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_THURSDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_FRIDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SATURDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Staff

INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,'Darren','Greenhalgh'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_MALE')
		,NULL,
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DDS')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_OWNER')
		,NULL,'darren.jpg','Dr. Greenhalgh received his D.D.S. from Case Western Reserve University. Upon graduation he moved back to his hometown in the northwest and has recently established a dental practice focusing on cosmetic and general dentistry in Mill Creek, WA.
Dr. Greenhalgh is a CEREC® beta tester for Sirona and has moderated the Puget Sound CEREC® Study Club for the past 4 ½ years. He has lectured internationally on the proficiency of the CEREC® restorative process and is a faculty member at the prestigious Scottsdale Center for Dentistry. Dr. Greenhalgh has the wonderful opportunity to be a co-editor of CerecDoctors magazine, the only journal dedicated to CEREC® dentistry. Dr. Greenhalgh has also been chosen to be the consultant of a variety of dental manufacturers to help improve their products and designs. He is truly a valued member of the Mill Creek, WA community.
 Dr. Greenhalgh is happily married to lovely wife, Cynthia, and has 3 wonderful kids named Gavin, Drew, and Gillian.',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry User

INSERT INTO tbl_dentistry_user (DentistryId,DentistryStaffId,UserName,Password,AccessRoleId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,(SELECT DentistryStaffId FROM tbl_dentistry_staff WHERE DentistryId=(SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles'))
		,'pacificnorthwestsmiles','oncall@123'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='ROLE_DENTIST_ADMINISTRATOR')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Gallery

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Pacific Northwest Smiles')
		,'Office','pnws.jpg'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-----------dontaddbelow-----------------



