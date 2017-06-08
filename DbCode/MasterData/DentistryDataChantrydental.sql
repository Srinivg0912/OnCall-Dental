

-- DECLARE @StatusActiveId INT
SET @StatusActiveId = (SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode = 'ACTIVE' 
						AND LookupTypeId = (SELECT LookupTypeId FROM tbl_lookup_type WHERE LookupType = 'STATUS'));


-- Dentistry Info

INSERT INTO tbl_dentistry (DentistryName,Website,AboutPractice,URLPrefix,LogoFileName,EmailId,RecoveryEmailId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ('Chantry Dental Care','www.chantrydentalcare.com'
		,'About Your smile is the very first thing that most people notice when they look at you, and it tells them a story about you. It has been proven that taking good care of your teeth will bring you more confidence, closer relationships, and more success throughout your lifetime. That’s why our team at Chantry Dental Care is so committed to giving you and your family the best possible services with a patient experience that far exceeds what you are used to from a dental office.
We want each of our patients to know how important they are. This is why we try to give our patients the WOW factor. At Chantry Dental Care, we try to go above and beyond when it comes to a patient’s experience during their visit.
Our offices are designed to make your dental experience as easy as possible. Whether you value a luxurious environment, technologies available, appointments or financial options, we make it easy to get your work completed. We do this in a family friendly comfortable environment designed to make your dental experience as easy as possible."','chantry',NULL,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location

INSERT INTO tbl_dentistry_location (DentistryId,Location,Longitude,Latitude,Address1,Address2,StateId,
									CountryId,ZipCode,LocationTypeId,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,'California','-121.382314','38.407986','8580 Elk Ridge Way, Suite A','Suite A,Elk Grove CA,'
		,(SELECT StateId From tbl_states WHERE StateCode='AL')
		,(SELECT CountryId From tbl_country WHERE CountryCode='US')
		,'95624',(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='LOCATION_TYPE_HEAD_OFFICE')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Location Contact

INSERT INTO tbl_dentistry_location_contacts (DentistryId,ContactName,PhoneNumber,Mobile,EmailId,ContactTypeId
											,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,'Dr. Jeffery Chantry','916-685-2575',NULL,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='CONTACT_TYPE_PRIMARY')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Office Hours

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SUNDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_MONDAY')
		,'07:00 AM','12:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_TUESDAY')
		,'01:00 PM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_WEDNESDAY')
		,'01:00 PM','07:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_THURSDAY')
		,'07:00 AM','12:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_FRIDAY')
		,'07:00 AM','12:00 PM'
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

INSERT INTO tbl_dentistry_hours (DentistryId,WeekDayId,StartTime,EndTime
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='WEEKDAY_SATURDAY')
		,NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Staff

INSERT INTO tbl_dentistry_staff (DentistryId,FirstName,LastName,GenderId,Age,DegreeId,IsGeneral
								,SpecializationId,DesignationId,Experience,PhotographFileName,About,Mobile,EMailId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,'Jeffery','Chantry'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='GENDER_MALE')
		,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DEGREE_DDS')
		,1,NULL
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='DESIGNATION_OWNER')
		,22,'jeff.png','Dr. Jeffery Chantry opened our practice in 1994 as an office where the whole family could receive top-quality dentistry in a friendly and caring environment. He also wanted to provide his patients with leading- edge, start-to-finish solutions for all their dental needs. He has trained extensively in a comprehensive array of advanced procedures so he can effectively handle most any dental concern in the comfort of our office.
He provides expert restorative and cosmetic dentistry, including the replacement of missing teeth with dental implants. He also provides minimally invasive laser gum disease treatment and cosmetic gum treatment. He is certified in both cutting-edge orthodontics using braces, and Invisalign® teeth straightening using clear aligners. Dr. Chantry can use any combination of these and other procedures to restore your smile to full health, function and beauty.
Dr. Chantry loves being a dentist because he is able to build long-term relationships with people and make a positive impact on their lives. “I enjoy the times that I know I have made a difference, either with a cosmetic solution or by relieving another’s pain',NULL,NULL
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry User

INSERT INTO tbl_dentistry_user (DentistryId,DentistryStaffId,UserName,Password,AccessRoleId
							,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,(SELECT DentistryStaffId FROM tbl_dentistry_staff WHERE DentistryId=(SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care'))
		,'chantrydental','oncall@123'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='ROLE_DENTIST_ADMINISTRATOR')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);


-- Dentistry Gallery

INSERT INTO tbl_dentistry_gallery (DentistryId,Title,ImageFileName,ImageTypeId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='Chantry Dental Care')
		,'Staff','chantrystaff.png'
		,(SELECT LookupValueId FROM tbl_lookup_value WHERE LookupCode='IMAGE_TYPE_STAFF')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1);

-- Dentistry Specialization

INSERT INTO tbl_dentistry_specialization (DentistryId,SpecializationId
								,Description,StatusId,CreatedDate,CreatedBy,LastUpdateDate,LastUpdatedBy)
VALUES ((SELECT DentistryId FROM tbl_dentistry WHERE DentistryName='DentistryName')
		,(SELECT SpecializationId FROM tbl_specialization WHERE SpecializationCode='DENTAL_IMPLANT')
		,NULL,@StatusActiveId,CURRENT_DATE, -1, CURRENT_DATE, -1); 

