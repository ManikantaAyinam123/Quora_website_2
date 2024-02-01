class WayController < ApplicationController
    def index
        if user_signed_in? 
            
          redirect_to home_index_path
       else
          redirect_to otp_verifys_path
       end
     end
end
