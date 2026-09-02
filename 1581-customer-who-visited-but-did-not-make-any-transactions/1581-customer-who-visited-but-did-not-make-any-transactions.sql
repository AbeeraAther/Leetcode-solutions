select v.customer_id,
COUNT(v.visit_id) AS count_no_trans
from Visits  v
left join Transactions t on v.visit_id=t.visit_id
where t.transaction_id IS NULL
Group by v.customer_id;