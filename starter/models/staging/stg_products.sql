select
    product_id,
    product_name,
    category_code,
    {{ cents_to_dollars('unit_price_cents') }} as unit_price
from {{ source('brightly', 'raw_products') }}
