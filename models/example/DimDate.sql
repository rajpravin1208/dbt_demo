WITH dates AS (
  SELECT
    DATE_ADD('2011-01-01', INTERVAL (number - 1) DAY) AS Date
  FROM
    `prj-data-d-poc-5-7joi.dbt_demo_bq.Numbers`
  WHERE
    DATE_ADD('2011-01-01', INTERVAL (number - 1) DAY) <= '2022-12-31'
)
SELECT 
    Date,
    EXTRACT(YEAR FROM Date) AS Year,
    CONCAT('Q', CAST(EXTRACT(QUARTER FROM Date) AS STRING)) AS Quarter,
    EXTRACT(WEEK FROM Date) AS Week_Number,
    EXTRACT(MONTH FROM Date) AS Month_Number,
    FORMAT_DATE('%B', Date) AS Month,
    FORMAT_DATE('%A', Date) AS Day_Of_Week
FROM dates
ORDER BY 1