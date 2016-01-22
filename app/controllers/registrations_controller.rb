class RegistrationsController < Devise::RegistrationsController

  protected

  # def params
  # 	params[:user].permit(:name, :mobile_num, :address)
  # end
  def update_resource(resource, params)
  	
    resource.update_without_password(params)
  end
end
