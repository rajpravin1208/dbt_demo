SELECT 
    Distinct CustomerID,
    SUBSTRING(Email_Name, 2, INSTR(Email_Name, ':') - 3) AS Email_Id,
    REPLACE(SUBSTR(Email_Name, INSTR(Email_Name, ':') + 1), ',', '') AS Customer_Name,
    CAST(ZipCode AS STRING) AS ZipCode
FROM `prj-data-d-poc-5-7joi.dbt_demo_bq.sales`
ORDER BY CustomerID
