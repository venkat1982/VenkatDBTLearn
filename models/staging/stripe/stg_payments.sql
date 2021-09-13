/*
--before configuring source file
with Payments as 
(
Select id as payment_id ,
 orderid as order_id ,
 amount
 from raw.stripe.payment
)

select * from Payments */

select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created as created_at
from {{ source('stripe', 'payment') }}