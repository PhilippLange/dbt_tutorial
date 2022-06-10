with country_city as (
select * from
{{ ref('country_city') }}
)

select
    country_city.*,
    visited_cities.city is not null as visited_city
from country_city
left join {{ ref('visited_cities') }} visited_cities
on country_city.name = visited_cities.city
