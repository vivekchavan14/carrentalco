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


CREATE TABLE Garage (
  GarageID INT PRIMARY KEY,
  Garage_Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Range_of_Services VARCHAR(255) NOT NULL,
  Payment_Terms VARCHAR(255) NOT NULL
);

CREATE TABLE Expenditures (
  ExpenditureID INT PRIMARY KEY,
  Expense_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

CREATE TABLE Revenues (
  RevenueID INT PRIMARY KEY,
  Revenue_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

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

CREATE TABLE Car_Garage (
  CarID INT,
  GarageID INT,
  PRIMARY KEY (CarID, GarageID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID),
  FOREIGN KEY (GarageID) REFERENCES Garage(GarageID)
);

CREATE TABLE Customer_Car (
  CustomerID INT,
  CarID INT,
  PRIMARY KEY (CustomerID, CarID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID)
);CREATE TABLE Car (
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

CREATE TABLE Garage (
  GarageID INT PRIMARY KEY,
  Garage_Name VARCHAR(255) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Range_of_Services VARCHAR(255) NOT NULL,
  Payment_Terms VARCHAR(255) NOT NULL
);

CREATE TABLE Expenditures (
  ExpenditureID INT PRIMARY KEY,
  Expense_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

CREATE TABLE Revenues (
  RevenueID INT PRIMARY KEY,
  Revenue_Type VARCHAR(255) NOT NULL,
  Amount DECIMAL(10,2) NOT NULL,
  Date DATE NOT NULL,
  Description VARCHAR(255) NOT NULL
);

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

CREATE TABLE Car_Garage (
  CarID INT,
  GarageID INT,
  PRIMARY KEY (CarID, GarageID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID),
  FOREIGN KEY (GarageID) REFERENCES Garage(GarageID)
);

CREATE TABLE Customer_Car (
  CustomerID INT,
  CarID INT,
  PRIMARY KEY (CustomerID, CarID),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (CarID) REFERENCES Car(CarID)
);