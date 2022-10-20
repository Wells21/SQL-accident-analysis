/* lets get the total number of accidents caused by overtaking */
select Cause_of_accident, count(Cause_of_accident) as "total accidents" 
from cleaned where Cause_of_accident = "Overtaking";


/* what causes of accidents has the highest accident occurence */
select Cause_of_accident, count(Cause_of_accident) as "total_accidents"
from cleaned 
group by Cause_of_accident
order by total_accidents desc
limit 1;


/* top 10 causes of accidents */
select Cause_of_accident, count(Cause_of_accident) as "total_accidents" from cleaned
group by Cause_of_accident
order by total_accidents desc
limit 10;


/* At what weather conditon did the highest accident occured, caused by overloading */
select Weather_conditions, count(Weather_conditions) as "total_accidents"
from cleaned
where Cause_of_accident = "Overloading"
group by Weather_conditions
order by total_accidents desc;


/* At what light conditon did the least accident occured on an alsphalt road */
select Light_conditions, count(Light_conditions) as "total_accidents"
from cleaned
where Road_surface_type = "Asphalt roads"
group by Light_conditions
order by total_accidents asc
limit 1;


/* At what light conditon did the highest accident occured on an alsphalt road or Earth roads */
select Light_conditions, count(Light_conditions) as "total_accidents"
from cleaned
where Road_surface_type = "Asphalt roads" or Road_surface_type = "Earth roads"
group by Light_conditions
order by total_accidents desc
limit 1;



/* what age range of driver has the least accident severity */
select distinct(Age_band_of_driver) from cleaned
where Accident_severity = (select min(Accident_severity) from cleaned);


/* what age range of drivers has more accident occurence */
select Age_band_of_driver, count(Age_band_of_driver) as "total_accidents"
from cleaned
group by Age_band_of_driver
order by total_accidents desc;


/* at what junction did accident occured the most */
select Types_of_Junction, count(Types_of_Junction) as "total_accidents"
from cleaned
group by  Types_of_Junction
order by total_accidents desc
limit 1;


/* what gender had more involvement in accident */
select Sex_of_driver, count(Sex_of_driver) as "total_accidents"
from cleaned
group by  Sex_of_driver
order by total_accidents desc;