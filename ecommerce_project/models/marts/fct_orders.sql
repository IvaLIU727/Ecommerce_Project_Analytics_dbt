with orders as (
    select * from {{ ref('stg_orders') }}
),

order_items as (
    select * from {{ ref('stg_order_items') }}
),

order_revenue as (
    select
        order_id,
        sum(price)          as order_revenue,
        sum(freight_value)  as order_freight
    from order_items
    group by order_id
),

final as (
    select
        orders.order_id,
        orders.customer_id,
        orders.order_status,
        orders.ordered_at,
        orders.delivered_at,
        orders.estimated_delivery_at,
        order_revenue.order_revenue,
        order_revenue.order_freight
    from orders
    left join order_revenue
        on orders.order_id = order_revenue.order_id
)

select * from final
