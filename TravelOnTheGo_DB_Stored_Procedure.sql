CREATE DEFINER=`root`@`localhost` PROCEDURE `Price-Category`()
BEGIN
select Distance, Price,
case 
when price > 1000 then "Expensive"
when price > 500 and price < 1000 then "Average Cost"
else "Cheap"
end as distance 
from `Price`;
END