CREATE TABLE Price_tax (
Price_ID int NOT NULL PRIMARY KEY,
Price_after_tax float NOT NULL,
Value_added_tax_percent int NOT NULL,
Retail_price_no_tax float NOT NULL,
Discount_percent int NOT NULL
);

CREATE TABLE Keyword (
Product_ID int NOT NULL,
Keyword_title varchar(255) NOT NULL,
PRIMARY KEY(Keyword_title, Product_ID),
FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Name_person (
Name_ID int NOT NULL PRIMARY KEY,
FNAME varchar(255) NOT NULL,
LNAME varchar(255) NOT NULL,
Mname varchar(255)
);

CREATE TABLE Address (
Address_ID int NOT NULL PRIMARY KEY,
Street_name varchar(255) NOT NULL,
City varchar(255) NOT NULL,
ZIP_code int NOT NULL,
Country varchar(255)
);

CREATE TABLE Description_text (
Description_ID int NOT NULL PRIMARY KEY,
Long_vers MEDIUMTEXT NOT NULL,
Short_vers varchar(255) NOT NULL
);

CREATE TABLE Department (
Department_ID int NOT NULL PRIMARY KEY,
Title varchar(255) NOT NULL,
Top_list BOOLEAN NOT NULL DEFAULT FALSE,
Logo varchar(255) NOT NULL,
Parent_ID int,
Description_ID int NOT NULL,
FOREIGN KEY (Parent_ID) REFERENCES Department(Department_ID),
FOREIGN KEY (Description_ID) REFERENCES Description_text(Description_ID)
);

CREATE TABLE Product (
Product_ID int NOT NULL PRIMARY KEY,
Department_ID int NOT NULL,
Product_title varchar(255) NOT NULL,
Product_picture varchar(255) NOT NULL,
Stock_quantity int NOT NULL,
Featured_product BOOLEAN NOT NULL DEFAULT FALSE,
Description_ID int NOT NULL,
Price_ID int NOT NULL,
FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
FOREIGN KEY (Description_ID) REFERENCES Description_text(Description_ID),
FOREIGN KEY (Price_ID) REFERENCES Price_tax(Price_ID)
);

CREATE TABLE User_order (
Order_ID int NOT NULL PRIMARY KEY,
Product_ID int NOT NULL,
FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
Order_status varchar(255),
Order_date Date,
Quantity int,
Payment_reference char(10) UNIQUE NOT NULL,
End_price float,
Tracking_number char(12) UNIQUE NOT NULL,
Swedish_SSN char(10) NOT NULL,
FOREIGN KEY (Swedish_SSN) REFERENCES User_person(Swedish_SSN)
);

CREATE TABLE User_person (
Swedish_SSN char(10) NOT NULL PRIMARY KEY,
Email varchar(255) UNIQUE NOT NULL,
Address_ID int NOT NULL,
FOREIGN KEY (Address_ID) REFERENCES Address(Address_ID),
Name_ID int NOT NULL,
FOREIGN KEY (Name_ID) REFERENCES Name_person(Name_ID),
Phonenumber char(12) UNIQUE NOT NULL,
Permission_newsletter BOOLEAN NOT NULL DEFAULT FALSE,
Order_history int,
FOREIGN KEY (Order_history) REFERENCES User_order(Order_ID)
);

CREATE TABLE Review (
Review_index int NOT NULL PRIMARY KEY,
Swedish_SSN char(10) NOT NULL,
FOREIGN KEY (Swedish_SSN) REFERENCES User_person(Swedish_SSN),
Product_ID int NOT NULL,
FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
Date_review Date NOT NULL,
Rating char(1) NOT NULL,
Review_text varchar(255)
);

ALTER TABLE User_order
ADD FOREIGN KEY (Swedish_SSN) REFERENCES User_person(Swedish_SSN);

