start transaction;

-- replace these values dynamically
set @med_id = 1;
set @qty = 2;

select Stock into @currentStock from Medicines where MedicineID = @med_id;

if @currentStock >= @qty then

    select Price into @price from Medicines where MedicineID = @med_id;
    set @total = @price * @qty;

    insert into Sales (MedicineID, QuantitySold, SaleDate, TotalPrice)
    values (@med_id, @qty, curdate(), @total);

    update Medicines set Stock = Stock - @qty where MedicineID = @med_id;

    commit;

else
    rollback;
    select 'Insufficient stock!' as Message;
end if;
