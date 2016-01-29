class UsersController < ApplicationController

	def show
  	@user = User.includes(:orders).find(params[:id])
  	@orders = @user.orders
  	
  	render :layout => false
	end

end
