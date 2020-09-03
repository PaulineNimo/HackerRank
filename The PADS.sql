/*
Enter your query here.
*/
select concat(Name,'(',Substring(Occupation,1,1),')') 
as Name 
from OCCUPATIONS
order by Name;
select concat('There are a total of',' ',count(occupation),' ',lower(occupation),'s.') 
as total
from OCCUPATIONS
group by occupation
order by total;
