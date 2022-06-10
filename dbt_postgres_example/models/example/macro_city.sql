with city as (
select * from
{{ source('world-db-public', 'city') }}
)

select *, {{ relevant_city('name') }} as relevant
from city
