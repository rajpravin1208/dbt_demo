With new_data as

(SELECT 
  Distinct ProductID,
  Product,
  Category,
  Segment,
  Unit_Cost,
  Unit_Price
FROM {{ ref('Sales') }} )



  SELECT 
    ROW_NUMBER() OVER(ORDER BY ProductID) AS ProductSK,
    ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price,
    CatsegID
  FROM new_data
