class Admin::UserOrdersController < AdminController
	before_action :find_user

	def show
		@order = @user.orders.find(params[:id])
	end

	def new
		@order = @user.orders.new
		@order.delivery_address = @user.address
	end
	
	def create
		@order = @user.orders.new(params_order)
		
		if @order.save
			redirect_to admin_user_path(@user)
		else
			render :action => :new 
		end
	end

	def edit
		@order = @user.orders.find(params[:id])
	end

	def update
		@order = @user.orders.find(params[:id])

		if @order.update(params_order)
			redirect_to admin_user_path(@user)
		else
			render :action => :edit
		end
	end

	def destroy
		@order = @user.orders.find(params[:id])
		@order.destroy

		redirect_to admin_user_path(@user)
	end

	protected
	
	def find_user
		@user = User.find(params[:user_id])
	end

	def params_order
		params.require(:order).permit(:family_type_id,:spice, :rice, :delivery_address,:user_id, :delivery_date, :order_items_attributes =>[:status,:product_id, :id])
	end
end
