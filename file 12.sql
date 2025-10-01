-- Analyze the cumulative revenue generated over time.
-- Show revenue growing day by day
select order_date,
       -- Add today’s revenue + all previous days = running total
       sum(revanue) over (order by order_date) as cum_revanue
from (
       -- Find money made each day
       select orders.order_date,
              sum(order_details.quantity * pizzas.price) as revanue
       from order_details 
       join pizzas on order_details.pizza_id = pizzas.pizza_id
       join orders on orders.order_id = order_details.order_id
       group by orders.order_date
     ) as sales;
