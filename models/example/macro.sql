-- "ref" function is for selecting from other models


SELECT
    o.order_ID,
    c.customer_id,
    c.customer_name,
    p.product_ID,
    p.product_name,
    o.quantity,
    {{get_date_parts('order_date')}} AS date_extract
FROM
    Raw.Orders o
JOIN
    {{ ref("stg_customers") }} c ON o.customer_ID = c.customer_ID
JOIN
    Raw.Products p ON o.product_ID = p.product_ID