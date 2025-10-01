-- Calculate the total revenue generated from pizza sales.
SELECT 
    round(sum(order_details.quantity * pizzas.price),--  selecting quant and price for cal
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas 
    ON pizzas.pizza_id = order_details.pizza_id --  common between 2 tables