CREATE TABLE dbo.ClientContact(
	ClientContactId int not null identity(1,1),
	ClientId int not null,
	EntityTypeId int not null,
	PersonId int null
);

CREATE TABLE dbo.Address(
	AddressId int not null identity(1,1),
	ClientId int null,
	PersonId int null,
	EntityTypeId int not null,
	AddressNumber varchar(10) null,
	Street varchar(100) null,
	Street02 varchar(100) null,
	City varchar(100) null,
	StateId int null,
	CountryId int null,
	DateCreate datetime null
);

CREATE TABLE dbo.Phone(
	PhoneId int not null identity(1,1),
	EntityTypeId int not null,
	ClientId int null,
	PersonId int null,
	AreaCode int null,
	PhoneNumber int null,
	PhoneNumberPost int null
);

CREATE TABLE dbo.Project(
	ProjectId int not null identity (1,1),
	ClientId int not null,
	EntityTypeId int not null,
	Rate int null,
	StartDate datetime null,
	EndDate datetime null,
	ProjectName varchar(50) null
);

CREATE TABLE ProjectStatus(
	ProjectStatusId int not null identity(1,1),
	ProjectId int not null,
	EntityTypeId int not null,
	Notes varchar(8000) null,
	PercentComplete int null,
	StartDate datetime null,
	EndDate datetime null
);

CREATE TABLE EmployeeProject(
	EmployeeProjectId int not null identity(1,1),
	ProjectId int not null,
	EmployeeId int not null,
	EntityTypeId int not null,
	VehicleId int null,
	StartDate datetime null,
	EndDate datetime null,
	Notes varchar(8000) null
);

CREATE TABLE Review(
	ReviewId int not null identity(1,1),
	ReviewName varchar(100) not null,
	ReviewDate datetime null,
	EmployeeId int not null
);

CREATE TABLE ReviewData(
	ReviewDataId int not null identity(1,1),
	REviewId int not null,
	EntityTypeId int not null,
	ReviewDataValue varchar(8000) not null,
	CreateDate datetime null
);

CREATE TABLE Training(
	TrainingId int not null identity(1,1),
	EmployeeId int not null,
	TrainingName varchar(500) not null,
	CreateDate datetime null
);

CREATE TABLE TrainingData(
	TrainingDateId int not null identity(1,1),
	TrainingId int not null,
	EntityTypeId int not null,
	TrainingDataValue varchar(8000) not null,
	CreateDate datetime null
);

CREATE TABLE Vehicle(
	VehicleId int not null identity(1,1),
	Year int null,
	LicensePlate varchar(10) null,
	VIN varchar(20) null,
	Color varchar(10) null,
	IsPurchase bit null,
	PurchasePrice int null,
	PurchaseDate datetime null,
	VechicleModelId int not null
);

CREATE TABLE VehicleModel(
	VehicleModelId int not null identity(1,1),
	VehicleModelName varchar(50) not null,
	VehicleMakeId int not null
);

CREATE TABLE VehicleMake(
	VehicleMakeId int not null identity(1,1),
	VehicleMakeName varchar(50) not null,
	CreateDate datetime null
);

CREATE TABLE VehicleStatus(
	VehicleStatusId int not null identity(1,1),
	VehicleId int not null,
	EntityTypeId int not null,
	Notes varchar(8000) null,
	CreateDate datetime null
);