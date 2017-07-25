-- General Select Statements for testing
SELECT * FROM dbo.Vehicle;
SELECT * FROM dbo.VehicleModel;
SELECT * FROM dbo.VehicleMake;

-- Insert Vehicle Makes
INSERT INTO dbo.VehicleMake(VehicleMakeName) VALUES ('Aston Martin');
INSERT INTO dbo.VehicleMake(VehicleMakeName) VALUES ('General Motors');
INSERT INTO dbo.VehicleMake(VehicleMakeName) VALUES ('Hyundai');
INSERT INTO dbo.VehicleMake(VehicleMakeName) VALUES ('Toyota');
INSERT INTO dbo.VehicleMake(VehicleMakeName) VALUES ('Volkswagen');

-- Insert Vehicle Models
INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Vanquish',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Aston Martin';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Rapide S',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Aston Martin';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Hummber H3',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'General Motors';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Chevrolet Corvette',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'General Motors';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Accent',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Hyundai';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Equus',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Hyundai';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Camry',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Toyota';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Corolla',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Toyota';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Beetle',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Volkswagen';

INSERT INTO dbo.VehicleModel(VehicleModelName, VehicleMakeId)
	SELECT		'Jetta',
				a.VehicleMakeId
	FROM		dbo.VehicleMake a
	WHERE		a.VehicleMakeName = 'Volkswagen';

-- Insert Vehicles
INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (1, 2016, '1HGBH41JXQR109186', 'Red', 0, null, null, null);

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (5, 2016, '1GHBN95GXQR895187', 'Blue', 1, '10/19/2016', 18963, 'AB9-47D');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (4, 2017, '1RNKQ28AXMN914863', 'Green', 1, '05/29/2017', 504932, 'FW9-DQ7');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (9, 2016, '1ADXY18VXQR781496', 'Purple', 0, null, null, null);

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (7, 2016, '1JNRD63FXQR678126', 'White', 1, '06/05/2017', 49763, 'F87-FQ6');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (2, 2017, '1HGBH41JXMN985237', 'Tan', 0, null, null, null);

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (6, 2017, '1GHBN95GXMN184384', 'Yellow', 1, '03/20/2017', 47954, 'FD9-DA9');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (8, 2017, '1JNRD63FXMN198465', 'Pink', 1, '04/17/2017', 19843, 'VB7-897');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (3, 2016, '1RNKQ28AXQR175863', 'Cyan', 1, '11/03/2016', 19876, 'X47-7GA');

INSERT INTO dbo.Vehicle(VechicleModelId, Year, VIN, Color, IsPurchase, PurchaseDate, PurchasePrice, LicensePlate)
VALUES (10, 2017,'1ADXY18VXMN183549', 'Magenta', 0, null, null, null);