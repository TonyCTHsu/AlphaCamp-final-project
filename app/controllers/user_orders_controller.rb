class UserOrdersController < ApplicationController
	before_action :find_user

	def index
		@orders = @user.orders
	end

	def show
		@order = @user.orders.find(params[:id])
	end

	def new
		@order = @user.orders.new
	end
	
	def create
		@order = @user.orders.new(params_order)
		@order.user =current_user
		@order.save

		redirect_to user_path(@user)
	end

	def edit
		@order =@user.orders.find(params[:id])
	end

	def update
		@order =@user.orders.find(params[:id])
		@order.update(params_order)
		
		redirect_to user_path(@user)
	end

	def destroy
		@order =@user.orders.find(params[:id])
		@order.destroy

		redirect_to user_path(@user)
	end


	protected

	def find_user
		@user = User.find( params[:user_id] )
	end

	def params_order
		params.require(:order).permit(:family_type, :delivery_address, :delivery_date)
	end
end
