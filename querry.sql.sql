INSERT INTO "--Age Average of each Marital Status
select marital_status, round(avg(age), 2) as avg_age
from customer c 
group by 1
" (marital_status,avg_age) VALUES
	 ('',31.33),
	 ('Married',43.04),
	 ('Single',29.38);
