class ApiV1::OrdersController < ApiController

	before_action :authenticate_user!
	def index
		@orders = current_user.orders
	end

	def show
		@order = current_user.orders.find(params[:id])
	end

	def new
		@order = current_user.orders.new
		@order.delivery_address = current_user.address
	end
	
	def create
		@order = current_user.orders.new(params_order)
		@order.user = current_user
		if @order.save
      render :json => { :id => @order.id, :message => "Your order has been set!" }
    else
      render :json => { :message => "Invalid", :errors => @order.errors }, :status => 400
    end
		
	end

	# def edit
	# 	@order =@user.orders.find(params[:id])
	# end

	# def update
	# 	@order =@user.orders.find(params[:id])
	# 	@order.update(params_order)
		
	# 	redirect_to user_path(@user)
	# end

	# def destroy
	# 	@order =@user.orders.find(params[:id])
	# 	@order.destroy

	# 	redirect_to user_path(@user)
	# end


	protected

	def params_order
		params.require(:order).permit(
			:family_type_id, 
			:spice, 
			:rice, 
			:delivery_address, 
			:delivery_date, 
			:order_items_attributes => [
				:status, :product_id, :id
			]
		)	
	end

end
