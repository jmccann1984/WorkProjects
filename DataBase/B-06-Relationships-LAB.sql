--ClientContact Foreign Key Constraints
ALTER TABLE dbo.ClientContact
ADD CONSTRAINT FK_ClientContact_ClientId FOREIGN KEY(ClientId) REFERENCES dbo.Client(ClientId);

ALTER TABLE dbo.ClientContact
ADD CONSTRAINT FK_ClientContact_EntityTypeId FOREIGN KEY(EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

ALTER TABLE dbo.ClientContact
ADD CONSTRAINT FK_ClientContact_PersonId FOREIGN KEY(PersonId) REFERENCES dbo.Person(PersonId);

--Address Foreign Key Constraints
ALTER TABLE dbo.Address
ADD CONSTRAINT FK_Address_ClientId FOREIGN KEY(ClientId) REFERENCES dbo.Client(ClientId);

ALTER TABLE dbo.Address
ADD CONSTRAINT FK_Address_PersonId FOREIGN KEY(PersonId) REFERENCES dbo.Person(PersonId);

ALTER TABLE dbo.Address
ADD CONSTRAINT FK_Address_EntityTypeId FOREIGN KEY(EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

--Phone Foreign Key Constraints
ALTER TABLE dbo.Phone
ADD CONSTRAINT FK_Phone_EntityTypeId FOREIGN KEY(EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

ALTER TABLE dbo.Phone
ADD CONSTRAINT FK_Phone_ClientId FOREIGN KEY(ClientId) REFERENCES dbo.Client(ClientId);

ALTER TABLE dbo.Phone
ADD CONSTRAINT FK_Phone_PersonId FOREIGN KEY(PersonId) REFERENCES dbo.Person(PersonId);

--Project Foreign Key Constraints
ALTER TABLE dbo.Project
ADD CONSTRAINT FK_Project_ClientId FOREIGN KEY (ClientId) REFERENCES dbo.Client(ClientId);

ALTER TABLE dbo.Project
ADD CONSTRAINT FK_Project_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

--ProjectStatus Foreign Key Constraints
ALTER TABLE dbo.ProjectStatus
ADD CONSTRAINT FK_ProjectStatus_ProjectId FOREIGN KEY (ProjectId) REFERENCES dbo.Project(ProjectId);

ALTER TABLE dbo.ProjectStatus
ADD CONSTRAINT FK_ProjectStatus_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

--EmployeeProject Foreign Key Constraints
ALTER TABLE dbo.EmployeeProject
ADD CONSTRAINT FK_EmployeeProject_ProjectId FOREIGN KEY (ProjectId) REFERENCES dbo.Project(ProjectId);

ALTER TABLE dbo.EmployeeProject
ADD CONSTRAINT FK_EmployeeProject_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES dbo.Employee(EmployeeId);

ALTER TABLE dbo.EmployeeProject
ADD CONSTRAINT FK_EmployeeProject_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

ALTER TABLE dbo.EmployeeProject
ADD CONSTRAINT FK_EmployeeProject_VehicleId FOREIGN KEY (VehicleId) REFERENCES dbo.Vehicle(VehicleId);

--Review Foreign Key Constraints
ALTER TABLE dbo.Review
ADD CONSTRAINT FK_Review_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES dbo.Employee(EmployeeId);

--ReviewData Foreign Key Constraints
ALTER TABLE dbo.ReviewData
ADD CONSTRAINT FK_ReviewData_ReviewId FOREIGN KEY (ReviewId) REFERENCES dbo.Review(ReviewId);

ALTER TABLE dbo.ReviewData
ADD CONSTRAINT FK_ReviewData_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

--Training Foreign Key Constraints
ALTER TABLE dbo.Training
ADD CONSTRAINT FK_Training_EmployeeId FOREIGN KEY (EmployeeId) REFERENCES dbo.Employee(EmployeeId);

--TrainingData Foreign Key Constraints
ALTER TABLE dbo.TrainingData
ADD CONSTRAINT FK_TrainingData_TrainingId FOREIGN KEY (TrainingId) REFERENCES dbo.Training(TrainingId);

ALTER TABLE dbo.TrainingData
ADD CONSTRAINT FK_TrainingData_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);

--Vehicle Foreign Key Constraints
ALTER TABLE [dbo].[Vehicle]
ADD CONSTRAINT FK_Vehicle_VehicleModelId FOREIGN KEY ([VechicleModelId]) REFERENCES [dbo].[VehicleModel]([VehicleModelId]);

--VehicleModel Foreign Key Constraints
ALTER TABLE dbo.VehicleModel
ADD CONSTRAINT FK_VehicleModel_VehicleMakeId FOREIGN KEY (VehicleMakeId) REFERENCES dbo.VehicleMake(VehicleMakeId);

--VehicleStatus Foreign Key Constraints
ALTER TABLE dbo.VehicleStatus
ADD CONSTRAINT FK_VehicleStatus_VehicleId FOREIGN KEY (VehicleId) REFERENCES dbo.Vehicle(VehicleId);

ALTER TABLE dbo.VehicleStatus
ADD CONSTRAINT FK_VehicleStatus_EntityTypeId FOREIGN KEY (EntityTypeId) REFERENCES dbo.EntityType(EntityTypeId);