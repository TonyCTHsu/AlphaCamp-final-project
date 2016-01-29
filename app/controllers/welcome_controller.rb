class WelcomeController < ApplicationController
	def welcome
		if current_user
			@order = current_user.orders.new		
		end
	end

end
