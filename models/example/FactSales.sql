SELECT ProductID, Date, CustomerID,Units, Unit_Cost, Unit_Price FROM {{ ref('Sales') }}