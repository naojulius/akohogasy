class HomeController < ApplicationController
  def index
  	if user_signed_in?
  	   if current_user.email == "nao@sobantu.co.za"
  		@mes = "Hello, Admin. your email is: #{current_user.email} ."
  	     elsif current_user.email == "riana@sobantu.co.za"
  	     @mes = "Hello, Admin. your email is: #{current_user.email} ."
         
      end
    end
  end
end
