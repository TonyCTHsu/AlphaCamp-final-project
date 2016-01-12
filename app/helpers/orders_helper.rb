module OrdersHelper
	def setup_order(order)
	  Product.all.each do |p|
	    order.order_items.build(:product =>p, :status => "Whatever")
	  end
	  order 
	end
end