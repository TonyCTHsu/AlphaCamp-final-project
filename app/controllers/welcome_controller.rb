class WelcomeController < ApplicationController
	def welcome
		if current_user
			@order = current_user.orders.new
			@order.delivery_address = current_user.address

		else 
		
		end
	end

end
