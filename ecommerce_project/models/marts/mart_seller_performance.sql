with order_items as (
    select * from {{ ref('stg_order_items') }}
),

orders as (
    select * from {{ ref('fct_orders') }}
),

reviews as (
    select * from {{ ref('stg_order_reviews') }}
),

seller_revenue as (
    select
        seller_id,
        count(distinct order_items.order_id)    as total_orders,
        sum(price)                              as total_revenue,
        avg(price)                              as avg_order_value
    from order_items
    left join orders
        on order_items.order_id = orders.order_id
    where orders.order_status = 'delivered'
    group by seller_id
),

seller_reviews as (
    select
        order_items.seller_id,
        avg(reviews.review_score)   as avg_review_score
    from order_items
    left join reviews
        on order_items.order_id = reviews.order_id
    group by order_items.seller_id
),

final as (
    select
        seller_revenue.seller_id,
        seller_revenue.total_orders,
        seller_revenue.total_revenue,
        seller_revenue.avg_order_value,
        seller_reviews.avg_review_score
    from seller_revenue
    left join seller_reviews
        on seller_revenue.seller_id = seller_reviews.seller_id
)

select * from final