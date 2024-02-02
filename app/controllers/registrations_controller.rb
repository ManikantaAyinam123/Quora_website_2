class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    def create
      super do |resource|
        if resource.persisted?
          UserMailer.welcome_email(resource).deliver_later unless resource.invalid?
         
        end
      end
    end
    
    
      protected
    
      def configure_sign_up_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [ :email, :password, :password_confirmation,:email_verified])
      end
end
