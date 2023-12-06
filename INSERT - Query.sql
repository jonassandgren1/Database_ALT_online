INSERT INTO Department(Department_ID, Title, Logo, Description_ID)
VALUES(1, "Homepage", "Altonline Logo Hyperlink", 1);

INSERT INTO Department
VALUES(2, "TV and Sound", TRUE, "Subdepartments Logo Hyperlinks", 1, 2);

INSERT INTO Department
VALUES(3, "Household", TRUE, "Subdepartments Logo Hyperlinks", 1, 3);

INSERT INTO Department
VALUES(4, "TV", FALSE, "TV Logo Hyperlink", 2, 4);

INSERT INTO Department
VALUES(5, "Soundbars", FALSE, "Soundbar Logo Hyperlink", 2, 5);

INSERT INTO Department
VALUES(6, "Headphones", FALSE, "Headphones Logo Hyperlink", 2, 6);

INSERT INTO Department
VALUES(7, "Coffe Machines", FALSE, "Coffe Machines Logo Hyperlink", 3, 7);

INSERT INTO Department
VALUES(8, "Microwaves", FALSE, "Microwaves Logo Hyperlink", 3, 8);

INSERT INTO Department
VALUES(9, "Refridgerators", FALSE, "Refrigerators Logo Hyperlink", 3, 9);

INSERT INTO Product
VALUES(1, 4, "LG 65'' 4K LED TV", "LG 65'' TV Picture Hyperlink", 22, TRUE, 10, 1);

INSERT INTO Product
VALUES(2, 4, "LG 97'' WIRELESS OLED EVO M3 4K SMART TV", "LG 97'' TV Picture Hyperlink", 
0, FALSE, 11, 2);

INSERT INTO Product
VALUES(3, 5, "SAMSUNG HW-Q995C SOUNDBAR", "SAMSUNG SOUNDBAR Picture Hyperlink", 
33, TRUE, 12, 3);

INSERT INTO Product
VALUES(4, 5, "LG S95QR 9.1.5 DOLBY ATMOS SOUNDBAR", "LG SOUNDBAR Picture Hyperlink", 
2, FALSE, 13, 4);

INSERT INTO Product
VALUES(5, 6, "APPLE AIRPODS MAX, SPACEGRAY", "APPLE AIRPODS MAX Picture Hyperlink", 
5, TRUE, 14, 5);

INSERT INTO Product
VALUES(6, 7, "JURA 15478 GIGA 10 DIAMOND BLACK", "JURA Coffee Machine Picture Hyperlink", 
0, FALSE, 15, 6);

INSERT INTO Product
VALUES(7, 7, "SIEMENS TE651319RW", "SIEMENS Coffee Machine Picture Hyperlink", 
8, TRUE, 16, 7);

INSERT INTO Product
VALUES(8, 8, "SAMSUNG MS23K3513AS/EE MICROWAVE", "SAMSUNG MICROWAVE Picture Hyperlink",
9, TRUE, 17, 8);

INSERT INTO Product
VALUES(9, 8, "SIEMENS IQ700 CE732GXB1 MICROWAVE", "SIEMENS MICROWAVE Picture Hyperlink",
3, FALSE, 18, 9);

INSERT INTO Product
VALUES(10, 9, "MIELE K 7773 D REFRIDGERATOR", "MIELE REFRIDGERATOR Picture Hyperlink",
1, TRUE, 19, 10);

INSERT INTO User_person
VALUES(9707120101, "Kjellhåkansson@hotmail.com", 1, 1, +46123456789, TRUE, 1);

INSERT INTO User_person
VALUES(6007182020, "GrevenvonReemtsma@hotmail.com", 2, 2, +46987654321, FALSE, 2);

INSERT INTO User_order
VALUES(1, 2, "delivered", "2023-11-20", 1, 1059672341, 10000, 123456789010, 9707120101);

INSERT INTO Name_person
VALUES(1, "Kjell", "Lars", "Håkansson");

INSERT INTO Name_person
VALUES(2, "Greven", "Dan", "Von Reemstma");

INSERT INTO Review
VALUES(1, 9707120101, 2, "2023-11-28", 1, "This product is so shit. I want to threw it from the roof. It landed on an elderly 
lady and now I am facing murder charges. You will hear from my lawyers.");

INSERT INTO Review
VALUES(2, 6007182020, 2, "2023-11-29", 4, "This product is the best I have ever had. Unfortunately my elderly wife
was hit by a flying TV, I picked it up and put it on my wall. It's super good.");

INSERT INTO Review
VALUES(3, 9707120101, 1, "2023-08-10", 3, "This TV is decent");

INSERT INTO Description_text
VALUES(1, "Welcome to ALT-Online! We’re thrilled to see you’ve managed to find us among the millions of far more interesting places on the internet. 
You must have a lot of time on your hands, and we’re so grateful you’ve chosen to spend some of it here. Enjoy your stay!", "Welcomne to ALT-Online");

INSERT INTO Description_text
VALUES(2, "Welcome to our TV and Sound Department! Discover our wide range of top-quality televisions and sound systems, designed to transform your home into a personal cinema. 
Explore our collection and find the perfect combination of stunning visuals and immersive audio for your entertainment needs.", "Explore our TV and Sound Department
 for a diverse range of high-quality televisions and immersive sound systems, designed to elevate your home entertainment experience.");
 
INSERT INTO Description_text
VALUES(3, "Welcome to our Household Department, your ultimate destination for all home essentials. Here, you’ll find everything from state-of-the-art kitchen appliances that make cooking a 
breeze, to elegant home decor that adds a touch of sophistication to any room. Whether you’re looking for the latest in vacuum technology, 
stylish dinnerware for your next family gathering, or cozy bedding for that perfect night’s sleep, we’ve got you covered. Dive in and make your house truly feel like home.", 
"Welcome to our Household Department, your one-stop shop for all home essentials, from kitchen appliances to home decor.");
 
INSERT INTO Price_tax
VALUES(1, 9990, 12, 8919.64, 0);
 
INSERT INTO Price_tax
VALUES(2, 299999, 12, 267856.25, 0);
 
INSERT INTO Price_tax
VALUES(3, 15990, 12,14276.79, 0);
 
INSERT INTO Price_tax
VALUES(4, 22491, 12, 20081.25, 10);
 
INSERT INTO Price_tax
VALUES(5, 6990, 12, 6241.07, 0);
 
INSERT INTO Price_tax
VALUES(6, 28792, 12, 25707.14, 20);
 
INSERT INTO Price_tax
VALUES(7, 5999, 12, 5356.25, 0);
 
INSERT INTO Price_tax
VALUES(8, 1999, 12, 1784.82, 0);
 
INSERT INTO Price_tax
VALUES(10, 36590, 12, 32669.64, 0);

INSERT INTO Description_text
VALUES(10, " ", "Enjoy movies and series with strong colours and incredible detail.");
 
INSERT INTO Description_text
VALUES(11, " ", "World's first OLED with 4K 120hz and wireless connection");
 
INSERT INTO Description_text
VALUES(12, " ", "Powerful Atmos soundbar and subwoofer creates a fantastic 3d-sound for your home cinema.");
 
INSERT INTO Description_text
VALUES(13, " ", "Let yourself get emerged into the perfect suroundsound system.");
 
INSERT INTO Description_text
VALUES(14, " ", "A perfect mix of cristal clear high resolution sound.");
 
INSERT INTO Description_text
VALUES(15, " ", "Suitable for even bigger families thanks to two canisters for coffebeans.");
 
INSERT INTO Description_text
VALUES(16, " ", "Top-class espressomachine with touch-control and automatic cleaning");
 
INSERT INTO Description_text
VALUES(17, " ", "Save energy with the eco-function and quickly defrost food with Quick Defrost-function.");
 
INSERT INTO Description_text
VALUES(19, " ", "Integrated refrigderator with automatic humidity-adding function to the vegetablebox");
 
INSERT INTO Keyword
VALUES(1, "TV");

INSERT INTO Keyword
VALUES(2, "TV");

INSERT INTO Keyword
VALUES(3, "Soundbar");

INSERT INTO Keyword
VALUES(4, "Soundbar");

INSERT INTO Keyword
VALUES(5, "Headphones");

INSERT INTO Keyword
VALUES(6, "Coffe Machine");

INSERT INTO Keyword
VALUES(7, "Coffe Machine");

INSERT INTO Keyword
VALUES(8, "Microwave");

INSERT INTO Keyword
VALUES(9, "Microwave");

INSERT INTO Keyword
VALUES(10, "Refridgerator");

INSERT INTO Keyword
VALUES(1, "LG");

INSERT INTO Keyword
VALUES(2, "LG");

INSERT INTO Keyword
VALUES(4, "LG");

INSERT INTO Keyword
VALUES(3, "Samsung");

INSERT INTO Keyword
VALUES(8, "Samsung");

INSERT INTO Keyword
VALUES(7, "Siemens");

INSERT INTO Keyword
VALUES(9, "Siemens");
