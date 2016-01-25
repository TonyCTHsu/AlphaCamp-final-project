class WelcomeController < ApplicationController
	def welcome
		@order = current_user.orders.new
		@order.delivery_address = current_user.address
	end

end
