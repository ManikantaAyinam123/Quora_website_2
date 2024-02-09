class OtpVerifysController < ApplicationController
    before_action :authenticate_user!
    def index
        
    end
    def create 
        a1 = UserMailer.new
        random_number = a1.new_otp
        otp_value= params[:otp]
        nd = otp_value.to_i
        
        if nd === random_number
            user = current_user
            user.update(email_verified: true)
            redirect_to home_index_path
        else
            redirect_to root_path, notice: 'Failed to save OTP verification.'
        end
      
    end
end
