USE carrentalco;

CREATE TABLE Car (
  CarID INT PRIMARY KEY,
  Make VARCHAR(255) NOT NULL,
  Model VARCHAR(255) NOT NULL,
  Year_of_Production INT NOT NULL,
  Engine_Size DECIMAL(10,2) NOT NULL,
  Fuel_Type VARCHAR(255) NOT NULL,
  Number_of_Passengers INT NOT NULL,
  Registration_Number VARCHAR(255) NOT NULL,
  Purchase_Price DECIMAL(10,2) NOT NULL,
  Purchase_Date DATE NOT NULL,
  Rent_Price DECIMAL(10,2) NOT NULL,
  Insurance_Details VARCHAR(255) NOT NULL
);

INSERT INTO Car (CarID, Make, Model, Year_of_Production, Engine_Size, Fuel_Type, Number_of_Passengers, Registration_Number, Purchase_Price, Purchase_Date, Rent_Price, Insurance_Details)
VALUES
  (1, 'Toyota', 'Camry', 2019, 2.5, 'Petrol', 5, 'ABC123', 20000, '2020-01-01', 100, 'XYZ Insurance'),
  (2, 'Honda', 'Civic', 2020, 1.5, 'Petrol', 5, 'DEF456', 22000, '2020-02-01', 95, 'ABC Insurance'),
  (3, 'Tesla', 'Model 3', 2021, 3.0, 'Electric', 5, 'GHI789', 55000, '2021-01-01', 150, 'PQR Insurance');

CREATE TABLE Garage (
  GarageID INT PRIMARY KEY,
  Garage_Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Range_of_Services VARCHAR(255) NOT NULL,
  Payment_Terms VARCHAR(255) NOT NULL
);

INSERT INTO Garage (GarageID, Garage_Name, Address, Range_of_Services, Payment_Terms)
VALUES
  (1, 'AutoCare', '123 Main Street', 'Maintenance, Repairs, Upgrades', 'Monthly'),
  (2, 'TechGarage', '456 Park Ave', 'Diagnostics, Repairs, Customization', 'Per Service'),
  (3, 'FastFix', '789 Broadway', 'Emergency Repairs, Maintenance', 'Upfront');

CREATE TABLE Expenditures (
  ExpenditureID INT PRIMARY KEY,
  Expense_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

INSERT INTO Expenditures (ExpenditureID, Expense_Type, Amount, Date, Description)
VALUES
  (1, 'Repairs', 1000, '2022-01-01', 'Engine repair for Toyota Camry'),
  (2, 'Maintenance', 500, '2022-02-01', 'Regular maintenance for Honda Civic'),
  (3, 'Insurance', 800, '2022-03-01', 'Renewal of insurance for Tesla Model 3');

CREATE TABLE Revenues (
  RevenueID INT PRIMARY KEY,
  Revenue_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

INSERT INTO Revenues (RevenueID, Revenue_Type, Amount, Date, Description)
VALUES
  (1, 'Rent', 1000, '2022-01-01', 'Rent for Toyota Camry'),
  (2, 'Sale', 5000, '2022-02-01', 'Sale of Honda Civic'),
  (3, 'Rent', 1500, '2022-03-01', 'Rent for Tesla Model 3');

CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Telephone_Number VARCHAR(255) NOT NULL,
  Driving_License_Number VARCHAR(255) NOT NULL,
  Credit_Card_Details VARCHAR(255) NOT NULL,
  Booking_Details VARCHAR(255) NOT NULL,
  Payment_Method VARCHAR(255) NOT NULL
);

INSERT INTO Customer (CustomerID, Name, Address, Telephone_Number, Driving_License_Number, Credit_Card_Details, Booking_Details, Payment_Method)
VALUES
  (1, 'John Doe', '123 Main St', '555-555-5555', 'DL1234567', 'VISA 1234', 'Booking for Toyota Camry from 01/01/2022 to 01/02/2022', 'Credit Card'),
  (2, 'Jane Doe', '456 Park Ave', '555-555-5556', 'DL2345678', 'MASTERCARD 5678', 'Booking for Honda Civic from 02/01/2022 to 02/02/2022', 'Cash'),
  (3, 'Jim Smith', '789 Broadway', '555-555-5557', 'DL3456789', 'AMEX 9012', 'Booking for Tesla Model 3 from 03/01/2022 to 03/02/2022', 'Debit Card');

CREATE TABLE Car_Garage (
  CarID INT,
  GarageID INT,
  PRIMARY KEY (CarID, GarageID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID),
  FOREIGN KEY (GarageID) REFERENCES Garage(GarageID)
);

INSERT INTO Car_Garage (CarID, GarageID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);


CREATE TABLE Customer_Car (
  CustomerID INT,
  CarID INT,
  PRIMARY KEY (CustomerID, CarID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID)
); 

INSERT INTO Customer_Car (CustomerID, CarID)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);
  
select * from Car;
select * from Garage;
select * from Expenditures;
select * from Revenues;
select * from Customer;
select * from Car_Garage;
select * from Customer_Car;
