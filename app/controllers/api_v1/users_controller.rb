class ApiV1::UsersController < ApiController
	
 #  def index
	# 	@users = User.all
	# end

	# def show
 #  	@user = User.find(params[:id])
 #  	@orders = @user.orders
 # 	end

 	def create
 		x = User.new(reg_params)
		if x.save
      render :json => { :message => "Registration success!",
                        :auth_token => x.authentication_token,
                        :user_id => x.id}
    else 
    	# validates :email, :uniqueness =>{ :message => "Email has already been registered!" },:status => 401
      render :json => { :message => "Invalid", :errors => @user.errors }, :status => 401
    end
 	end

protected
	
	def reg_params
		params.permit(:email, :password, :password_confirmation)
	end
end
