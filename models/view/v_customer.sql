{{ config(materialized='view') }}

    SELECT
        customer_ID,
        CONCAT(first_name, ' ', last_name) AS customer_name,
        email AS email_address,
        address AS billing_address
    FROM Raw.Customer