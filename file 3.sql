-- Identify the highest-priced pizza.
select pizza_types.name,pizzas.price -- selection of two tables name and price
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id -- common part in both table is pizza id
order by pizzas.price desc limit 1;-- limit 1 → After sorting, LIMIT 1 tells SQL to return only the first row from the sorted list.
