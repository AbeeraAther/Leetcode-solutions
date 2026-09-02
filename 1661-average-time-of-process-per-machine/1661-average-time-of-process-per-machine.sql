
select s.machine_id,
ROUND(AVG(e.timestamp-s.timestamp),3) AS processing_time
from Activity s
JOIN Activity e on s.machine_id=e.machine_id
AND s.process_id=e.process_id
AND e.activity_type='end'
AND s.activity_type='start'
GROUP BY machine_id;