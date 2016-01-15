class ApiV1::UsersController < ApiController


  def index
		@users = User.all
	end

	def show
  	@user = User.find(params[:id])
  	@orders = @user.orders
  
	end

end
