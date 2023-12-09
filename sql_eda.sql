--Age Average of each Marital Status
select marital_status, round(avg(age), 2) as avg_age
from customer c 
group by 1;

---Age average of each gender
select 
case when gender = 0 then 'Female'
when gender = 1 then 'Male'
end as gender,
round(avg(age), 2) as avg_age
from customer
group by gender;

---Store with highest Quantity Sales 
select sum(qty) as total_qty,
	   storename as store_name
from store 
join transactions 
on store.storeid = transactions.storeid 
group by 2
order by 1 desc
limit 1;

----- product with highest total amount sales
SELECT pr.product_name as product_name, SUM(totalamount) as total_amount
FROM transactions as tr
JOIN product as pr ON tr.productid = pr.productid
GROUP BY pr.product_name
ORDER BY total_amount DESC
LIMIT 1;




