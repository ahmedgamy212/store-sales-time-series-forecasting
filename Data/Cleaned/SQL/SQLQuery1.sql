select * from holidays_events
select * into holidays from holidays_events
where transferred =0
-------------------------------------------------------------------------------
--monthely Growth
with Cte as (
select 
	Year(date) as year,
	MONTH(date) month,
	SUM(sales) as [Total Sales] 
from train
group by Year(date),
	MONTH(date)
),
lasted as (
select *,
	lag([Total Sales])over(order by year,month) AS [Last Total]
from Cte

)
select
	 year,
	 month,
	[Total Sales],
case when [Last Total] is null then 0
else [Last Total] end as[last total],
case when [Last Total] is null then 0
 else Round( [Total Sales]-[Last Total],2) end  as [Growth],
 case when [Last Total] is null then 0
else
 Round(([Total Sales]-[Last Total])*100/  [Last Total],2) end as [Growth Prs]
from lasted
---------------------------------------------------------------------
-- top 10 Category saling
with Categotry as(
select
	family,
	Round(sum(sales),2) as total 
from train
group by family
), Ranking as (
select *,DENSE_RANK()over(order by total desc) as Rk from Categotry
)
select
	Family,
	Total,
	Rk
from Ranking
where Rk<=10
order by total desc
------------------------------------------------------------
--Top Selling Cities in Each State
with Cities as(
select
	a.city,
	a.state,
	Round(sum(b.sales),2) as total
from stores a join train b
on a.store_nbr = b.store_nbr
group by a.city,a.state
),Ranking as (
select *,DENSE_RANK()over(partition by State order by total desc) as Rk from Cities
)
select
	City,
	state,
	total,
	Rk
from Ranking
where Rk=1 
order by total desc
---------------------------------------------------------------------------------
--Top Stores by Total Sales in Each City
with Cities as(
select
	a.city,
	a.store_nbr,
	Round(sum(b.sales),2) as total
from stores a left join train b
on a.store_nbr = b.store_nbr
group by a.city,a.store_nbr
),Ranking as (
select *,DENSE_RANK()over(partition by City order by total desc) as Rk from Cities
)
select
	City,
	store_nbr,
	total,
	Rk
from Ranking
where Rk=1 
order by total desc
-----------------------------------------------------------------------
--total stores sales
select
	store_nbr,
	Round(sum(sales),2) as Total 
from train
group by store_nbr
order by store_nbr
---------------------------------------------------------------------------
--avg Sales each Store by year
select
	YEAR(date) as year,
	store_nbr,
	Round(Avg(sales),2) as Average 
from train
group by store_nbr,YEAR(date)
order by year,store_nbr
-----------------------------------------------------------------
-- onpromotions effect on category
with CTE as (
select
	family,
	Round(avg(case when onpromotion >0 then sales end),3) as [Avg_sales_with_promotion],
	Round(avg(case when onpromotion =0 then sales end),3) as [Avg_sales_without_promotion],
    count(distinct case when onpromotion > 0 then date end) as promo_days
       
from train
group by family)
select 
	family,
	Avg_sales_with_promotion,
	Avg_sales_without_promotion,
	  round(Avg_sales_with_promotion - Avg_sales_without_promotion, 2) as absolute_lift,
    Round((Avg_sales_with_promotion - Avg_sales_without_promotion) * 100.0 
	/ nullif(Avg_sales_with_promotion, 0),2) as lift_percent
from CTE
where Avg_sales_without_promotion is not null
order by lift_percent desc;
-----------------------------------------------------------------------------------
--holidays effect
select 
    h.type,
    avg(t.sales) as avg_sales,
    count(*) as days_count
from train t
inner join holidays h on t.date = h.date
group by h.type;
------------------------------------------------------------------------
--oil price effect 
select t.date, t.store_nbr, t.sales, o.dcoilwtico
into train_with_oil
from train t
left join oil o on t.date = o.date;