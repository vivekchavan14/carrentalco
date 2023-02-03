# car-rental-company-database-sql


Description of the Problem: A car rental company (let's call it CRC) wants to develop a relational database with given data below

1)  "Car" table with 12 columns: CarID (primary key), Make, Model, Year_of_Production, Engine_Size, Fuel_Type, Number_of_Passengers, Registration_Number, Purchase_Price,      Purchase_Date, Rent_Price, and Insurance_Details.

2)  "Garage" table with 5 columns: GarageID (primary key), Garage_Name, Address, Range_of_Services, and Payment_Terms.

3)  "Expenditures" table with 5 columns: ExpenditureID (primary key), Expense_Type, Amount, Date, and Description.

4)  "Revenues" table with 5 columns: RevenueID (primary key), Revenue_Type, Amount, Date, and Description.

5)  "Customer" table with 8 columns: CustomerID (primary key), Name, Address, Telephone_Number, Driving_License_Number, Credit_Card_Details, Booking_Details, and 
     Payment_Method.         

6)  "Car_Garage" table with 3 columns: CarID, GarageID, and a composite primary key of CarID and GarageID, with foreign key references to the CarID and GarageID columns      in the "Car" and "Garage" tables, respectively.

7)  "Customer_Car" table with 3 columns: CustomerID, CarID, and a composite primary key of CustomerID and CarID, with foreign key references to the CustomerID and CarID      columns in the "Customer" and "Car" tables, respectively.

 For Database Diagram we can use SQL Workbench to create the tables and insert a few records into the tables to test queries below.

 ![carRentalCoRELATIONALSCHEMA](https://user-images.githubusercontent.com/111511821/216608777-713252e4-6336-4256-9b17-89eee6f39638.png)




