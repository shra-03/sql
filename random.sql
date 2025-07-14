-- Q.Create a sequence with: Cache of 50 Cycle option Starting from 1500 with Increment of 2
create sequence xyz 
start with 1500
increment by 2
cache 50
cycle;

-- Q.I have a Table "Sales" as 
-- salesperson	region	sales_amount
-- Alice	East	1000
-- Bob	West	1200
-- Alice	West	500
-- Bob	East	700
-- Please write a SQL so that my Output looks like below:
-- salesperson	East	West
-- Alice	1000	500
-- Bob	700	1200
 
select salesperson,sum(case when region = 'east' then sales_amount else 0 end) as east,sum(case when region = 'west' then sales_amount else 0 end) as west
from sales groupby salesperson;
 
