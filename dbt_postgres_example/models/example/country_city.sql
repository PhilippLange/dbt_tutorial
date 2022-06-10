with country as (
select * from
{{ source('world-db-public', 'country') }}
),
city as (
select * from
{{ source('world-db-public', 'city') }}
)

select country.name as country_name, city.*
from country
join city
on city.country_code = country.code