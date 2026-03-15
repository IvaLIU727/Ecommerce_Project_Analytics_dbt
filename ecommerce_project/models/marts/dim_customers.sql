with customers as (
    select * from {{ ref('stg_customers') }}
),

orders as (
    select * from {{ ref('fct_orders') }}
),

customer_orders as (
    select
        customer_id,
        count(order_id)         as total_orders,
        sum(order_revenue)      as total_spent,
        min(ordered_at)         as first_order_at,
        max(ordered_at)         as most_recent_order_at
    from orders
    group by customer_id
),

final as (
    select
        customers.customer_id,
        customers.customer_unique_id,
        customers.customer_city,
        customers.customer_state,
        customer_orders.total_orders,
        customer_orders.total_spent,
        customer_orders.first_order_at,
        customer_orders.most_recent_order_at
    from customers
    left join customer_orders
        on customers.customer_id = customer_orders.customer_id
)

select * from final