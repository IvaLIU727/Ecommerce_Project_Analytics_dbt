with source as (
    select * from {{ ref('olist_order_reviews_dataset') }}
),

renamed as (
    select
        review_id,
        order_id,
        review_score,
        review_creation_date    as reviewed_at
    from source
)

select * from renamed
