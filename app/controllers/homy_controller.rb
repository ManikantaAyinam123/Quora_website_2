class HomyController < ApplicationController
  before_action :authenticate_user!
  def index
    if user_signed_in? && current_user.email_verified === true 
     
      redirect_to home_path
  
    else
     
      redirect_to otp_verifys_path
    end
  end
end
