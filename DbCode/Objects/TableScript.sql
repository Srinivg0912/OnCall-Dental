
DROP TABLE IF EXISTS tbl_lookup_type;
CREATE  TABLE tbl_lookup_type
(
  LookupTypeId			INT        	UNIQUE		NOT NULL, 
  LookupType				VARCHAR(80) 	        NOT NULL,
  ImageFileName				VARCHAR(500) 	        NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT						NOT NULL,
  CreatedDate				DATE			        NOT NULL,
  CreatedBy				INT			            NOT NULL,
  LastUpdateDate			DATE			        NOT NULL,
  LastUpdatedBy			INT			            NOT NULL
);

-- tbl_lookup_value table
DROP TABLE IF EXISTS tbl_lookup_value;
CREATE  TABLE   tbl_lookup_value
(
  LookupValueId			INT        	UNIQUE	NOT NULL,
  LookupTypeId			INT        		    NOT NULL,
  LookupValue        		VARCHAR(80) 	    NOT NULL,
  LookupCode				VARCHAR(80) 	    NOT NULL,
  ImageFileName				VARCHAR(500) 	        NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT					NOT NULL,
  CreatedDate				DATE			    NOT NULL,
  CreatedBy				INT			        NOT NULL,
  LastUpdateDate			DATE			    NOT NULL,
  LastUpdatedBy			INT			        NOT NULL
);


DROP TABLE IF EXISTS tbl_country;
CREATE  TABLE tbl_country
(
  CountryId					INT        	UNIQUE		NOT NULL, 
  CountryName				VARCHAR(80) 	        NOT NULL,
  CountryCode				VARCHAR(10) 	        NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT						NOT NULL,
  CreatedDate				DATE			        NOT NULL,
  CreatedBy				INT			            NOT NULL,
  LastUpdateDate			DATE			        NOT NULL,
  LastUpdatedBy			INT			            NOT NULL
);

DROP TABLE IF EXISTS tbl_states;
CREATE  TABLE tbl_states
(
  StateId					INT        	UNIQUE		NOT NULL, 
  CountryId					INT						NOT NULL
  StateName					VARCHAR(80) 	        NOT NULL,
  StateCode				VARCHAR(10) 				NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT						NOT NULL,
  CreatedDate				DATE			        NOT NULL,
  CreatedBy				INT			            NOT NULL,
  LastUpdateDate			DATE			        NOT NULL,
  LastUpdatedBy			INT			            NOT NULL
);



DROP TABLE IF EXISTS tbl_specialization;
CREATE  TABLE   tbl_specialization
(
  SpecializationId          	INT        			UNIQUE	NOT NULL,
  SpecializationName								varchar(200),
  SpecializationCode								varchar(200),
  ImageFileName				VARCHAR(500) 	        NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT					NOT NULL,
  CreatedDate				DATE			    NOT NULL,
  CreatedBy				INT			        NOT NULL,
  LastUpdateDate			DATE			    NOT NULL,
  LastUpdatedBy			INT			        NOT NULL
);

DROP TABLE IF EXISTS tbl_dentistry;
CREATE TABLE tbl_dentistry (

  DentistryId			INT(11) 	UNIQUE	NOT NULL,
  DentistryName			varchar(150)		NOT NULL,
  Website				varchar(500)				,
  AboutPractice			varchar(1000)				,
  URLPrefix				varchar(255)		NOT NULL,
  LogoFileName			varchar(255)				,
  EmailId				varchar(255)		NOT NULL,
  RecoveryEmailId		varchar(255)		NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_user;
CREATE TABLE tbl_dentistry_user (

  DentistryUserId			INT(11) UNIQUE	NOT NULL,
  DentistryId				INT(11) 		NOT NULL,
  DentistryStaffId			INT						,
  UserName					varchar(150)	NOT NULL,
  Password					varchar(150)	NOT NULL,
  AccessRoleId				INT				NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_location;
CREATE TABLE tbl_dentistry_location (

  DentistryLocationId		INT(11) UNIQUE	NOT NULL,
  DentistryId				INT(11) 		NOT NULL,
  Location					varchar(150)	NOT NULL, 
  Longitude					varchar(20)				,
  Latitude					varchar(20)				,
  Address1					varchar(500)			,
  Address2					varchar(500)			,
  StateId					INT						,
  CountryId					INT						,
  ZipCode					varchar(500)			,
  LocationTypeId			INT				NOT NULL,
  Description				VARCHAR(500) 	        NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_location_contacts;
CREATE TABLE tbl_dentistry_location_contacts (

  DentistryLocContId		INT(11) UNIQUE	NOT NULL,
  DentistryId				INT(11) 		NOT NULL,
  ContactName				varchar(255)	NOT NULL,
  PhoneNumber				varchar(20)		NULL,
  Mobile					varchar(20)		NULL,
  EmailId					varchar(255)	NULL,
  ContactTypeId				INT				NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_hours;
CREATE TABLE tbl_dentistry_hours (

  DentistryHoursId			INT(11) UNIQUE	NOT NULL,
  DentistryId				INT(11) 		NOT NULL,
  WeekDayId					INT				NOT NULL,
  StartTime					Time			NOT NULL,
  EndTime					Time			NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_staff;
CREATE TABLE tbl_dentistry_staff (

  DentistryStaffId			INT(11) UNIQUE	NOT NULL,
  DentistryId				INT(11) 		NOT NULL,
  FirstName					varchar(255)			,
  LastName					varchar(255)			,
  GenderId					INT						,
  Age						INT						,
  DegreeId					INT						,
  IsGeneral					BIT						,
  SpecializationId			INT						,
  DesignationId				INT						,
  Experience				INT						,
  PhotographFileName		varchar(255)			,
  About						varchar(1000)			,
  Mobile					varchar(100)			,
  EMailId					varchar(255)			,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT				NOT NULL,
  CreatedDate				DATE			NOT NULL,
  CreatedBy				INT				NOT NULL,
  LastUpdateDate			DATE			NOT NULL,
  LastUpdatedBy			INT				NOT NULL
) ;

DROP TABLE IF EXISTS tbl_dentistry_gallery;
CREATE  TABLE   tbl_dentistry_gallery
(
  DentistryGalleryId		INT        			UNIQUE	NOT NULL,
  DentistryId				INT        		    NOT NULL,
  Title						varchar(200),
  ImageFileName				Varchar(500),
  ImageTypeId				INT					NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId					INT					NOT NULL,
  CreatedDate				DATE			    NOT NULL,
  CreatedBy				INT			        NOT NULL,
  LastUpdateDate			DATE			    NOT NULL,
  LastUpdatedBy			INT			        NOT NULL
);


DROP TABLE IF EXISTS tbl_dentistry_specialization;
CREATE  TABLE   tbl_dentistry_specialization
(
  DentistrySpecializationId         INT        			UNIQUE	NOT NULL,
  DentistryId           			INT        		    NOT NULL,
  SpecializationId					INT        		    NOT NULL,
  Description				VARCHAR(500) 	    NULL,
  StatusId							INT					NOT NULL,
  CreatedDate						DATE			    NOT NULL,
  CreatedBy						INT			        NOT NULL,
  LastUpdateDate					DATE			    NOT NULL,
  LastUpdatedBy					INT			        NOT NULL
);


DROP TABLE IF EXISTS tbl_dentistry_chat_user;
CREATE  TABLE   tbl_dentistry_chat_user
(
  DentistryChatUserId			  	INT        			UNIQUE	NOT NULL,
  DentistryId           			INT        		    NOT NULL,
  UserName							varchar(200),
  Email								Varchar(500),
  ChatStatusId						INT,
  StatusId							INT					NOT NULL,
  CreatedDate						DATE			    NOT NULL,
  CreatedBy						INT			        NOT NULL,
  LastUpdateDate					DATE			    NOT NULL,
  LastUpdatedBy					INT			        NOT NULL
);


DROP TABLE IF EXISTS tbl_dentistry_chat_user_message;
CREATE  TABLE   tbl_dentistry_chat_user_message
(
  DentistryChatUserMessageId			          		INT        			UNIQUE	NOT NULL,
  DentistryChatUserId           						INT        		    NOT NULL,
  DentistryId										INT					NOT NULL,
  UserMessage											varchar(800),
  ChatDate											DATETIME,
  IsAdminMsg										BIT,
  ChatStatusId										INT,
  StatusId							INT					NOT NULL,
  CreatedDate						DATE			    NOT NULL,
  CreatedBy						INT			        NOT NULL,
  LastUpdateDate					DATE			    NOT NULL,
  LastUpdatedBy					INT			        NOT NULL
);

