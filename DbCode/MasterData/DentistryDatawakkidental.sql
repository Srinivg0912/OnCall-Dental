

DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'))


-- Dentistry Info

INSERT INTO tbl_dentistry (DentistryName,Website,AboutPractice,URLPrefix,LogoFileName,EmailId,RecoveryEmailId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ('Waikki Dental','www.waikikidental.com'
		,'We are always welcoming new patients and we would love to have you as part of our dental family.  Please explore our web site to learn more about us.  You can find information about our staff, our office, and the procedures and services that we offer.If you have any questions please call us.  We love hearing from our patients and anyone who may be interested in becoming one.
        We’ll Provide You With That Winning Smile!'
		,'waikki',NULL,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location

INSERT INTO tbl_dentistry_location (DentistryId,Location,Longitude,Latitude,Address1,Address2,StateId,
									CountryId,ZipCode,LocationTypeId,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,'California','-121.285458','38.781430','953 Pleasant Grove Blvd','Suite #140 Roseville CA'
		,(SELECT StateId From tbl_states WHERE StateCode='AL')
		,(SELECT CountryId From tbl_country WHERE CountryCode='US')
		,'95678',(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='LOCATION_TYPE_HEAD_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location Contact

INSERT INTO tbl_dentistry_location_contacts (DentistryId,ContactName,PhoneNumber,Mobile,EmailId,ContactTypeId
											,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,'Dr.Teresa Hall','916-772-6248',NULL,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='CONTACT_TYPE_PRIMARY')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Office Hours

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SUNDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_MONDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_TUESDAY')
		,'08:00 AM','06:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_WEDNESDAY')
		,'08:00 AM','06:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_THURSDAY')
		,'08:00 AM','06:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_FRIDAY')
		,'08:00 AM','05:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SATURDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Staff

INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,'Teresa','Hall'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_FEMALE')
		,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DDS')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_OWNER')
		,NULL,'TERESA.JPG','Dr. Hall began her dental career as a Resident of Rancho Los Amigos Medical Center after receiving her Doctor of Dental Surgery degree from Loyola University School of Dentistry.
She began her own practice serving patients in Roseville.  A member of the Army Reserve, she was called to duty in 2003 and served  with the 328th Combat Support Hospital in Kosovo.  She was forced to sell her practice at that time and upon her return from duty, Dr. Hall continued her dental career as an associate in practices in and around Roseville. She made a decision in 2006 to again practice from her own office in Roseville with the forming of Waikiki Dental.  Naming it for the love she, and her family, have for the Hawaiian Island of Oahu, Dr. Hall and her staff have created a very warm and relaxing atmosphere in which to offer dental care.
As a wife and mother of three children, Dr. Hall is keenly aware of the importance of good general health for all family members.  She is especially concerned for the part that oral health plays in the overall health of her patients to whom she extends a special welcome as warm as the Tropics.',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry User

INSERT INTO tbl_dentistry_user (DentistryId,DentistryStaffId,UserName,Password,AccessRoleId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,(SELECT DentistryStaffId FROM tbl_dentistry_staff WHERE DentistryId=(SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental'))
		,'wakkidental','oncall@123'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='ROLE_DENTIST_ADMINISTRATOR')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Gallery

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Waikki Dental')
		,'office',NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


----BELOW IS NOT NEEDED------



