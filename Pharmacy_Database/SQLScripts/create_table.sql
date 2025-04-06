create table Medicines( 
MedicineID int primary key auto_increment, 
Name varchar(100) not null, 
Price decimal(10,2) not null, 
Stock int not null, 
ExpiryDate date not null 
);

 create table Suppliers(
    SupplierID int primary key auto_increment,
    Name varchar(100) not null,
    Contact varchar(20),
    Address varchar(255)
    ); 

    create table Sales(
    SaleID int primary key auto_increment,
    MedicineId int not null,
    QuantitySold int not null,
    SaleDate date not null,
    TotalPrice decimal(10,2) not null,
    foreign key (MedicineID) references Medicines(MedicineID) on delete cascade
    );


--extra tables
create table medicinesupplier (
    MedicineID int,
    SupplierID int,
    Quantity int,
    primary key (MedicineID, SupplierID),
    foreign key (MedicineID) references Medicines(MedicineID),
    foreign key (SupplierID) references Suppliers(SupplierID)
);


create table customers (
    customername varchar(100) not null,
    MedicineID int,
    Quantity int,
    foreign key (MedicineID) references Medicines(MedicineID)
);
