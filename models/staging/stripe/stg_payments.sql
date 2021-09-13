with Payments as 
(
Select id as payment_id ,
 orderid as order_id ,
 amount
 from raw.stripe.payment
)

select * from Payments