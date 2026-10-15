{% docs order_status %}
The lifecycle status of an order. One of: placed, shipped, delivered, returned,
cancelled. Cancelled orders have no payment.
{% enddocs %}

{# TODO: add a doc block named `order_amount` describing how an order's total is
   calculated (the sum of its line-item amounts), then reference it from
   _marts.yml with "{{ doc('order_amount') }}".

{% docs order_amount %}
...your description here...
{% enddocs %}
#}
