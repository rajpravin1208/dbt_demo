WITH new_data AS (
  SELECT 
    DISTINCT ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price
  FROM {{ ref('Sales') }}
),
C AS (
  SELECT 
    ROW_NUMBER() OVER(ORDER BY ProductID) AS ProductSK,
    ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price
  FROM new_data
)
SELECT C.*, d.CatsegID
FROM C
LEFT JOIN `prj-data-d-poc-5-7joi`.`dbt_demo_bq`.`DimCatSeg` AS d
  ON d.Segment = C.Segment
  AND d.Category = C.Category
