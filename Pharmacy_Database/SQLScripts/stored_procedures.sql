delimiter $$

create procedure GetLeastSoldMedicine()
begin
    select 
        m.MedicineID,
        m.Name as MedicineName,
        sum(s.QuantitySold) as TotalQuantitySold
    from Sales s
    join Medicines m on s.MedicineID = m.MedicineID
    group by m.MedicineID, m.Name
    order by TotalQuantitySold asc
    limit 1;
end$$

delimiter ;
