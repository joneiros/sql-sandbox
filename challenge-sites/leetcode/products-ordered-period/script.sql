# Write your MySQL query statement below
SELECT
    pr.product_name,
    SUM(o.unit) as unit
FROM
    Products pr
    RIGHT JOIN Orders o ON pr.product_id = o.product_id
WHERE
    o.order_date > "2020-01-31"
    AND o.order_date < "2020-03-01"
GROUP BY
    pr.product_id
HAVING
    SUM(o.unit) >= 100;