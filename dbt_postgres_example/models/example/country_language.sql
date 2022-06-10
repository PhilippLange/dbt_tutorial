with country as (
select * from
{{ source('world-db-public', 'country') }}
),
country_language as (
select * from
{{ source('world-db-public', 'country_language') }}
)

select country.name as country_name, country_language.*
from country
join country_language
on country_language.country_code = country.code