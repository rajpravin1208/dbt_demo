
  SELECT distinct 
    ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price
  FROM {{ ref('FactSales') }}
  order by ProductID
