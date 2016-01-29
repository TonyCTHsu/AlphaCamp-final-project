class WelcomeController < ApplicationController
	
	def welcome
		if current_user
			@order = current_user.orders.new		
		end
	end

# protected

# 	def params_order
# 		params.require(:order).permit(:family_type_id,:spice, :rice, :delivery_address, :delivery_date, :order_items_attributes =>[:status,:product_id, :id])
# 	end

end