class HomyController < ApplicationController
  before_action :authenticate_user!

  def index
    if user_signed_in?
       if current_user.provider.present?
         redirect_to home_index_path
      elsif current_user.email_verified === true
        redirect_to home_index_path
      else

        redirect_to otp_verifys_path, notice: 'A verification code has been sent to your registered email. '
      end
    else
      redirect_to otp_verifys_path, notice: 'A verification code has been sent to your registered email.'
    end
  end
end

