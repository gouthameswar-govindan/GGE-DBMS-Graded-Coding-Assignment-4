# 3) How many females and how many male passengers travelled for a minimum distance of 600 KM s? :
select gender, count(gender) as "# Male:Female" from passenger where distance >=600 group by gender;
  
 # 4)Find the minimum ticket price for Sleeper Bus:
 select min(price) as `Minimum-Sleeper-Price` from price where Bus_Type = "Sleeper";
 
 # 5) Select passenger names whose names start with character 'S' :
 select * from passenger where Passenger_name like 'S%';
 
 # 6) Calculate price charged for each passenger displaying Passenger name, Boarding City,Destination City, Bus_Type, Price in the output :

select Passenger_name , Boarding_City , Destination_City , p1.Bus_Type , p2.Price 
from 
passenger p1 
left join 
price p2 
on p1.Bus_Type = p2.Bus_Type and p1.Distance = p2.Distance ;

# 7) What are the passenger name/s and his/her ticket price who travelled in the Sitting bus for a distance of 1000 KM s :
select p1.Passenger_name, p1.Boarding_city, p1.Destination_city, p1.Bus_type, p2.Price 
from passenger p1, price p2 
where p1.Distance = 1000 and p1.Bus_type = 'Sitting' and p2.Distance = 1000 and p2.Bus_type = 'Sitting';
-- No Passenger where travelled in the Sitting bus for a distance of 1000 KM s.

# 8) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?

select Price, Bus_Type
from  price
where Distance = (select Distance from `Passenger` where Boarding_City="Panaji" and Destination_City="Bengaluru" ) ;

# 9) List the distances from the "Passenger" table which are unique (non-repeated distances) in descending order.:
select distinct distance from passenger order by Distance desc;

# 10) Display the passenger name and percentage of distance travelled by that passenger from the total distance travelled by all passengers without using user variables
select Passenger_name , Distance , Distance * 100.0 / (select sum(Distance) from Passenger) as "%" from Passenger;

# 11) Display the distance, price in three categories in table Price
-- a) Expensive if the cost is more than 1000
-- b) Average Cost if the cost is less than 1000 and greater than 500
-- c) Cheap otherwise

call `Price-Category`();


