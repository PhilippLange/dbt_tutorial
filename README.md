
start database and adminer:
`docker-compose up`

create venv:
`python -m venv dbt-env`
activate venv

install dbt:
`pip install dbt`

deploy:
```
dbt seed --profiles-dir .
dbt run --profiles-dir .
```

dbt create and serve docs
```
dbt docs generate --profiles-dir .
dbt docs serve --profiles-dir .
```
