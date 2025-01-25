CREATE INDEX idx_menu_unique on menu (pizzeria_id,pizza_name);
set enable_seqscan = off;
EXPLAIN ANALYSE
select  pizzeria_id, pizza_name
from menu
WHERE (pizzeria_id = 4 or pizzeria_id = 5) and pizza_name ='pepperoni pizza';