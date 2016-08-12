class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected
    def configure_permitted_parameters      
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :first_name, :last_name, :profile_image, :contact_number])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :profile_image, :contact_number])
    end

    def after_sign_in_path_for(resource)
      things_path
    end
end 

