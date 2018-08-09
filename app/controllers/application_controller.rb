class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

   def configure_permitted_parameters
   	devise_parameter_sanitizer.permit(:sign_up){|u| u.permit(:username, :firstname, :lastname, :birth, :is_male, :is_female, :password, :email, :password_confirmation, :about_user )}
    devise_parameter_sanitizer.permit(:sign_in){|u| u.permit(:username, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update){|u| u.permit(:username, :firstname, :lastname, :birth, :is_male, :is_female, :password, :email, :password_confirmation, :about_user )}
   end
end
