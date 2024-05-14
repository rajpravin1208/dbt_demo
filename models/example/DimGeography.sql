SELECT Distinct CAST(ZipCode AS STRING) AS ZipCode, 
        City, 
        State, 
        Region, 
        District, 
        Country 
FROM `prj-data-d-poc-5-7joi.dbt_demo_bq.sales` 
Order by 1