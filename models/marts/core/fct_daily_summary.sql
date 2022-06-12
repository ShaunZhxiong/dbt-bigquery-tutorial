with customer_id_order_date as (
    select
        customer_id,
        order_date,
        count(*) as total_orders
    from {{ ref('stg_orders') }}
    group by 1,2
)

select {{ dbt_utils.surrogate_key(['customer_id', 'order_date']) }} as id, * from customer_id_order_date