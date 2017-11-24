class ApplicationController < ActionController::Base
 before_action :authenticate_user!
  protect_from_forgery with: :exception

   rescue_from CanCan::AccessDenied do |exception|
		if current_user == "Admin"
			redirect_to admins_index_path, :alert => exception.message
		else
			redirect_to root_path,:alert => exception.message
		end
  end


before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
