class UserOrdersController < ApplicationController
	
	before_action :authenticate_user!

	# => replace @user by current_user

	def index
		@orders = current_user.orders
	end

	def show
		@order = current_user.orders.find(params[:id])

		render :layout => !request.xhr?
	end

	def new
		@order = current_user.orders.new
		@order.delivery_address = current_user.address
	end
	
	def create
		@order = current_user.orders.new(params_order)
		
		if @order.save
			redirect_to user_path(current_user)
		else
			render :action => :new 
		end
		
	end

	def edit
		@order =current_user.orders.find(params[:id])

		render :layout => !request.xhr?
	end

	def update
		@order =current_user.orders.find(params[:id])

		if @order.update(params_order)
			redirect_to user_path(current_user)
		else
			render :action => :edit
		end
	end

	def destroy
		@order =current_user.orders.find(params[:id])
		@order.destroy

		redirect_to user_path(current_user)
	end


	protected

	# Can kill it
	# def find_user
	# 	@user = current_user
	# end

	def params_order
		params.require(:order).permit(:family_type_id,:spice, :rice, :delivery_address, :delivery_date, :order_items_attributes =>[:status,:product_id, :id])
	end
end
