

-- DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'));


-- Dentistry Info

INSERT INTO tbl_dentistry (DentistryName,Website,AboutPractice,URLPrefix,LogoFileName,EmailId,RecoveryEmailId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ('Landmark Dental','www.landmarkdentaldowntown.com'
		,'Landmark Dental in Bakersfield, California, offers professional and reliable dental services for the entire family. We have proudly served the residents of the San Joaquin Valley for over 20 years. All dental procedures are thoroughly explained to our patients, as we believe trust is key. We customize our dental treatments to our patient’s specific needs. We specialize in general, cosmetic, restorative, and orthodontic dentistry.'
		,'landmarkdental','landmarklogo.jpg',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location

INSERT INTO tbl_dentistry_location (DentistryId,Location,Longitude,Latitude,Address1,Address2,StateId,
									CountryId,ZipCode,LocationTypeId,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,'Bakersfield','-119.018467','35.379292','2200 Chester Ave Bakersfield','CA'
		,(SELECT StateId From tbl_states WHERE StateCode='CA')
		,(SELECT CountryId From tbl_country WHERE CountryCode='US')
		,'9330',(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='LOCATION_TYPE_HEAD_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location Contact

INSERT INTO tbl_dentistry_location_contacts (DentistryId,ContactName,PhoneNumber,Mobile,EmailId,ContactTypeId
											,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,'Dr. Perry Y Jue','661-322-4732',NULL,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='CONTACT_TYPE_PRIMARY')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Office Hours

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SUNDAY')
		,'08:00 AM','02:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_MONDAY')
		,'06:00 PM','08:30 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_TUESDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_WEDNESDAY')
		,'06:00 PM','08:30 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_THURSDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_FRIDAY')
		,'06:00 PM','08:30 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SATURDAY')
		,'08:00 AM','02:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Staff

INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,'Dr.Perry Y','Jue'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_MALE')
		,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DMD')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_OWNER')
		,23,'jue.jpg','Dr. Perry Jue is a graduate of Boston University Dental School, with over 20 years of experience. Dr. Jue completed a two year general practice residency at Rancho Los Amigos Medical Center in 1994. He has had advanced training in all phases of dentistry including periodontics and oral surgery. He also served 2 years providing childrens dental care in a hospital setting. Dental implantology has been a special interest for Dr. Jue and he has been successfully placing implants since 2001. A provider of Invisalign, Dr. Jue has orthodontic training and experience in conventional braces.',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,'Dr.Meril S','Modi'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_MALE')
		,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DDS')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_ASSOCIATE')
		,6,'modi.jpg','Dr. Meril S. Modi has special interests within the branch of dentistry. A graduate of the highly prestigious UCLA School of Dentistry (2011), he served a one year residency at Veterans Affairs, Long Beach, where he served veterans with complex medical histories. His duties consisted of complex oral surgeries (wisdom teeth removal), implant placement, and periodontal surgeries. It is the surgical exposure here that enables him to enjoy the surgical aspect of dentistry. He is also very active in the field of endodontics (root canals), and follows endodontic literature closely.',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry User

INSERT INTO tbl_dentistry_user (DentistryId,DentistryStaffId,UserName,Password,AccessRoleId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,(SELECT DentistryStaffId FROM tbl_dentistry_staff WHERE DentistryId=(SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental'))
		,'landmarkdental','oncall@123'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='ROLE_DENTIST_ADMINISTRATOR')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Gallery

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Landmark Dental')
		,'Office','sco1.jpg'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);



