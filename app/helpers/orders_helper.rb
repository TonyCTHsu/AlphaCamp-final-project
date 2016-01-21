module OrdersHelper
	def setup_order(order)
	  
	  if order.order_items.empty?
	
		  Product.all.each do |p|
		    order.order_items.build(:product =>p, :status => "Whatever")
		  end
		end 
	  order 
	end
end

