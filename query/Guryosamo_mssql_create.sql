CREATE TABLE [Users] (
	_id int NOT NULL,
	first_name varchar(255) NOT NULL,
	midlle_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	gender varchar(255) NOT NULL,
	phone varchar(255) NOT NULL,
	email_address varchar(255) NOT NULL UNIQUE,
	password binary(64),
	salt uniqueidentifier,
	verified varchar(255) NOT NULL,
  CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED
  (
  [_id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Status] (
	user_id int NOT NULL,
	registred varchar(255) NOT NULL,
	registred_date date NOT NULL,
	pending varchar(255) NOT NULL
)
GO
CREATE TABLE [Addmin] (
	_id int NOT NULL IDENTITY(1,1),
	username varchar(255) NOT NULL,
	email_address nvarchar(255) NOT NULL,
	password binary(64) NOT NULL,
	salt uniqueidentifier NOT NULL,
  CONSTRAINT [PK_ADDMIN] PRIMARY KEY CLUSTERED
  (
  [_id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [MaleInformation] (
	user_id int NOT NULL,
	age_range varchar(255) NOT NULL,
	height varchar(255) NOT NULL,
	weight varchar(255) NOT NULL,
	skin_color varchar(255) NOT NULL,
	mariage_status varchar(255) NOT NULL,
	adress_town varchar(255) NOT NULL,
	education_level varchar(255) NOT NULL,
	work_place varchar(255) NOT NULL,
	job_title varchar(255) NOT NULL,
	homework_help varchar(255) NOT NULL
)
GO
CREATE TABLE [MaleChoice] (
	user_id int NOT NULL,
	age_range varchar(255) NOT NULL,
	height varchar(255) NOT NULL,
	weight varchar(255) NOT NULL,
	skin_color varchar(255) NOT NULL,
	mariage_status varchar(255) NOT NULL,
	education_level varchar(255) NOT NULL,
	does_she_work varchar(255) NOT NULL,
	cooking varchar(255) NOT NULL
)
GO
CREATE TABLE [FemaleChoice] (
	user_id int NOT NULL,
	age_range varchar(255) NOT NULL,
	height varchar(255) NOT NULL,
	weight varchar(255) NOT NULL,
	skin_color varchar(255) NOT NULL,
	mariage_status varchar(255) NOT NULL,
	education_level varchar(255) NOT NULL,
	homework_help varchar(255) NOT NULL
)
GO
CREATE TABLE [FemaleInformation] (
	user_id int NOT NULL,
	age_range varchar(255) NOT NULL,
	height varchar(255) NOT NULL,
	weight varchar(255) NOT NULL,
	skin_color varchar(255) NOT NULL,
	mariage_status varchar(255) NOT NULL,
	adress_town varchar(255) NOT NULL,
	education_level varchar(255) NOT NULL,
	do_you_work varchar(255) NOT NULL,
	work_place varchar(255) NOT NULL,
	job_title varchar(255) NOT NULL,
	cooking varchar(255) NOT NULL
)
GO

ALTER TABLE [Status] WITH CHECK ADD CONSTRAINT [Status_fk0] FOREIGN KEY ([user_id]) REFERENCES [Users]([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [Status] CHECK CONSTRAINT [Status_fk0]
GO


ALTER TABLE [MaleInformation] WITH CHECK ADD CONSTRAINT [MaleInformation_fk0] FOREIGN KEY ([user_id]) REFERENCES [Users]([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [MaleInformation] CHECK CONSTRAINT [MaleInformation_fk0]
GO

ALTER TABLE [MaleChoice] WITH CHECK ADD CONSTRAINT [MaleChoice_fk0] FOREIGN KEY ([user_id]) REFERENCES [Users]([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [MaleChoice] CHECK CONSTRAINT [MaleChoice_fk0]
GO

ALTER TABLE [FemaleChoice] WITH CHECK ADD CONSTRAINT [FemaleChoice_fk0] FOREIGN KEY ([user_id]) REFERENCES [Users]([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [FemaleChoice] CHECK CONSTRAINT [FemaleChoice_fk0]
GO

ALTER TABLE [FemaleInformation] WITH CHECK ADD CONSTRAINT [FemaleInformation_fk0] FOREIGN KEY ([user_id]) REFERENCES [Users]([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [FemaleInformation] CHECK CONSTRAINT [FemaleInformation_fk0]
GO
