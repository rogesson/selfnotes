class HomeController < ApplicationController
  def index
    puts current_user.inspect
    if user_signed_in?
      @user_name = current_user.email.split('@')[0]
    else
      @user_name = 'Guest'
    end
  end
end
