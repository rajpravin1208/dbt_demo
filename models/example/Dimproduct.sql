
  SELECT distinct 
    ProductID,
    Product,
    Category,
    Segment,
    Unit_Cost,
    Unit_Price
  FROM `prj-data-d-poc-5-7joi.dbt_demo_bq.sales`
  order by ProductID
