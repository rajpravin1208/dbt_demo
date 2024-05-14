SELECT Distinct CAST(ZipCode AS STRING) AS ZipCode, 
        City, 
        State, 
        Region, 
        District, 
        Country 
FROM {{ ref('FactSales') }}
Order by 1