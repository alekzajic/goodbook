class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # layout :layout_by_resource

  protected

  # Define permitted parameters for User - extend devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :current_password, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :avatar, :name, :birthday, :city, :about])
  end

  # # Define layout
  # def layout_by_resource
  #   # if devise auth
  #   if devise_controller?
  #     # load devise.html.erb
  #     "devise"
  #   else
  #     #load application.html.erb
  #     "application"
  #   end
  # end
end
