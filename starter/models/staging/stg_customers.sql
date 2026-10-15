select
    customer_id,
    first_name,
    last_name,
    email,
    city,
    country,
    cast(signup_date as date) as signup_date
from {{ source('brightly', 'raw_customers') }}
