SET enable_seqscan = off;
EXPLAIN  ANALYZE
SELECT  pizza_name, pizzeria.name as pizzeria_name
from menu
join pizzeria on pizzeria_id = pizzeria.id
order by 1;

