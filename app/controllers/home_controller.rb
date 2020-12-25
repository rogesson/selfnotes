class HomeController < ApplicationController
  def index
    if user_signed_in?
      @user_name = current_user.email.split('@')[0]
      @notes = current_user.notes
    else
      @user_name = 'Guest'
    end
  end
end
