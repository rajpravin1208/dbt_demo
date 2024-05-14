With new_data as

(SELECT 
  Distinct Category,
    Segment
FROM {{ ref('Dimproduct') }} )


Select 
    ROW_NUMBER() OVER(ORDER BY Category) AS CatsegID,
    Category,
    Segment
from new_data
