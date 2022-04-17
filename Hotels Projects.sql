
WITH hotels as (
SELECT * FROM [dbo].[year_2018]
union 
SELECT * FROM [dbo].[year_2019]
union
SELECT * FROM [dbo].[year_2020]
)
select* from hotels


select* into(hotels)
from hotels

=================================================================
select* from hotels


select [stays_in_weekend_nights]+[stays_in_week_nights] as all_stays_ntights
from hotels

ALTER TABLE hotels
ADD all_stays_nights int;

update hotels
set all_stays_nights=[stays_in_weekend_nights]+[stays_in_week_nights]

===============================================

select ([all_stays_nights]*[adr]) as revenue
from hotels

ALTER TABLE hotels
ADD revenue int;

update hotels
set revenue=[all_stays_nights]*[adr]

==================================================

SELECT * FROM hotels
left join market_segment
on hotels.market_segment=market_segment.market_segment
left join meal_cost
on meal_cost.meal=hotels.meal

=============================================
select * from hotels

=============================================
select * from [dbo].[market_segment]

update hotels
set market_segment='0'
where market_segment='Undefined'

update hotels
set market_segment='0.1'
where market_segment='Direct'

update hotels
set market_segment='0.1'
where market_segment='Groups'

update hotels
set market_segment='0.15'
where market_segment='Corporate'


update hotels
set market_segment='0.2'
where market_segment='Aviation'

update hotels
set market_segment='0.3'
where market_segment='Offline TA/TO'


update hotels
set market_segment='0.3'
where market_segment='Online TA'


update hotels
set market_segment='1'
where market_segment='Complementary'

==============================================
select * from [dbo].[meal_cost]

update hotels
set meal='0'
where meal='Undefined'

update hotels
set meal='12.99'
where meal='BB'

update hotels
set meal='17.99'
where meal='HB'

update hotels
set meal='21.99'
where meal='FB'

update hotels
set meal='35'
where meal='SC'
=============================================
Alter table hotels 
ADD new_revenue varchar;

update hotels
set new_revenue=[revenue]-[market_segment]
================================================




