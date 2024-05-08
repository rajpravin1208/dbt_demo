WITH CTE AS (
    SELECT
        iso_code AS code,
        PARSE_DATE('%d/%m/%Y', last_updated_date) AS Date,
        continent,
        population AS total_population
    FROM dbt_demo_bq.covid_data
)

SELECT
    code,
    Date,
    continent,
    total_population
FROM CTE
