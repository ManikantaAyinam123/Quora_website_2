class OtpVerifysController < ApplicationController
    def index
        
    end
    def create 
        a1 = UserMailer.new
    random_number = a1.new_otp
    otp_value= params[:otp]
    nd = otp_value.to_i
    if  nd === random_number
        redirect_to home_index_path
        

     
    else
      redirect_to root_path, notice: 'Failed to save OTP verification.' 
    end
    end
end
