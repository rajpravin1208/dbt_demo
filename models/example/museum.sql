SELECT  museum_id as Museum_ID,
        name as Museum_Name,
        address as Address,
        city as City,
        state as State,
        postal as Postal_Code,
        country as Country,
        url as Website,
        REPLACE(REPLACE(phone, '-', ''), ' ', '') AS Phone_Number
FROM `prj-data-d-poc-5-7joi.SQL_demo.museum` 
WHERE state IS NOT NULL
AND POSTAL IS NOT NULL
AND CITY != '2'
Order By Museum_ID