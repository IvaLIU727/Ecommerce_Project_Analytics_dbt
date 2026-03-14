with source as (
    select * from {{ ref('olist_order_items_dataset') }}
),

renamed as (
    select
        order_id,
        product_id,
        seller_id,
        price,
        freight_value
    from source
)

select * from renamed
