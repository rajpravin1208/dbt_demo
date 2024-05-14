
  SELECT distinct 
    ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price
  FROM {{ ref('Sales') }}
  order by ProductID
