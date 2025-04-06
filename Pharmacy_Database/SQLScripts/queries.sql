--Query 1
select * 
from Medicines 
where expirydate between curdate() and date_add(curdate(), interval 30 day);


--Query 2
select sum(totalprice) as totalsales 
from sales 
where month(saledate)=3 and year(saledate)=2025;

--Query 3
select * 
from Medicines 
where Stock < 10;


--Qurty 4
select m.name, sum(s.QuantitySold) as totalquantitysold
from Sales s
join Medicines m on s.Medicineid = m.Medicineid
group by s.Medicineid
order by totalquantitysold desc
limit 1;


--Query 5
select 
    supp.Name as Supplierame, 
    ms.MedicineID, 
    ms.SupplierID,
    sum(s.TotalPrice) as totalrevenue
from Sales s
join Medicines m on s.MedicineID = m.MedicineID
join medicinesupplier ms on m.MedicineID = ms.MedicineID
join Suppliers supp on ms.SupplierID = supp.SupplierID
where supp.SupplierID = 1
group by supp.Name, ms.MedicineID, ms.SupplierID;

--Query 6
SELECT s.SupplierID, s.Name, SUM(ms.Quantity) AS TotalMedicinesSupplied
FROM medicinesupplier ms
JOIN Suppliers s ON ms.SupplierID = s.SupplierID
GROUP BY s.SupplierID, s.Name
ORDER BY TotalMedicinesSupplied DESC
LIMIT 1;

--Query 7
select 
    c.name as customername,
    m.name as name,
    c.Quantity,
    m.Price,
    (c.Quantity * m.Price) as totalcost
from customers c
join Medicines m on c.MedicineID = m.MedicineID
where (c.Quantity * m.Price) = (
    select max(c2.Quantity * m2.Price)
    from customers c2
    join Medicines m2 on c2.MedicineID = m2.MedicineID
);


--Query 8
select * 
from Medicines 
where Medicineid not in (select distinct Medicineid from Sales);


--Query 9
select count(distinct SupplierID) as numberOfSupp
from medicinesupplier;

--Query 10
select SaleDate, avg(TotalPrice / QuantitySold) as avgprice
from Sales
group by SaleDate;





