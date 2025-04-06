insert into Medicines(Name,Price,Stock,ExpiryDate) values
   ('Paracetamol',10.50,100,'2025-12-31'),
   ('Ibuprofen',15.75,50,'2026-06-30'),
   ('Amoxicillin',20.00,75,'2024-09-15'),
   ('cetrizine',15.00,200,'2026-01-15'),
   ('azithromycin',60.00,2,'2024-12-31'),
   ('dolo 650',18.00,120,'2025-06-30'),
   ('Calpo',22.50,80,'2025-08-15'),
   ('coughrid',35.00,40,'2025-04-10'),
   ('asthalin',55.00,60,'2026-03-05'),
   ('zinkovit',10.00,300,'2026-01-01');



insert into Suppliers(Name,Contact,Address) values
    ('Medicrop','1234567890','sector-1,city-1'),
    ('Medico Pharma','9876543210','12 MG Road,Mumbai'),
    ('Healthplus Ltd','7416699882','45 Nehru Street,Delhi'),
    ('Lifeline Supplies','7207165432','78 Brigade Road,Bengaluru'),
    ('Wellcare Dist','9948236856','34 Banjarahills,Hyderabad'),
    ('Pharmaworld','9573247087','56 T.Nagar,Chennai'),
    ('Curemax Pharma','6927731834','23 Saltlake,Kolkata'),
    ('Healthylife','9573025432','67 FC Road,Pune'),
    ('Medizone Ltd','741345825','89 SG Highway,Ahmedabad'),
    ('Wellness corp','6923846173','11 MI Road,Jaipur'),
    ('Carefirst Pharma','8239147563','100 Hazaratganj,Lunknow');



insert into Sales(MedicineId,QuantitySold,SaleDate,Totalprice) values
    (1,2,'2025-04-01',21.00);
    (2,5,'2025-03-02',78.75),
    (3,7,'2025-03-05',140),
    (1,4,'2025-03-10',42),
    (4,8,'2025-03-15',120),
    (5,1,'2025-03-18',60),
    (2,3,'2025-03-20',47.25),
    (3,10,'2025-03-28',200),
    (6,10,'2025-02-10',180),
    (7,12,'2025-02-20',270),
    (8,7,'2025-02-02',245),
    (6,2,'2025-05-06',36),
    (9,6,'2025-01-01',330);


--extra tables
insert into medicinesupplier (MedicineID, SupplierID) values
(1, 1,100),
(2, 1,25),
(2, 2,25),
(3, 2,75),
(4, 3,200),
(5, 3,2),
(6, 1,70),
(6, 2,50),
(7, 1,80),
(8, 2,40),
(9, 3,60),
(10, 1,300);


insert into customers (customername, MedicineID, Quantity) values
('alice', 1, 6),
('bob', 2, 8),
('charlie', 3, 17),
('diana', 4, 8),
('eva', 5, 1),
('frank', 6, 12),
('grace', 7, 12),
('harry', 8, 7),
('irene', 9, 6);


