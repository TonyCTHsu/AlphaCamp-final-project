json.id order.id
json.name order.user.name
json.family_type order.family_type.family_type
json.delivery_address order.delivery_address
json.delivery_date order.delivery_date
json.items do
	json.array! @order.order_items
end