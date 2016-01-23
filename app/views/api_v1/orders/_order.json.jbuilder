json.id order.id
json.name order.user.name

json.delivery_address order.delivery_address
json.delivery_date order.delivery_date
json.spice order.spice
json.rice order.rice
json.items do
	json.array! order.order_items, :product_name, :status

end