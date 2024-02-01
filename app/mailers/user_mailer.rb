class UserMailer < ApplicationMailer
  default from: 'manikantaayinam2000@gmail.com'

  def welcome_email(user)
    @user = user
    $g = generate_random_number 
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def new_otp
    $g
  end

  private

  def generate_random_number
    @random_number = rand(1000..9999)
  end
end
