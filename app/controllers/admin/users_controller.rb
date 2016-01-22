class Admin::UsersController < AdminController
	
	def index
		@users = User.all
	end

	def show
   	@user = User.find(params[:id])
   	@orders = @user.orders
  end

end
