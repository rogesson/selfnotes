class HomeController < ApplicationController
  def index
    if user_signed_in?
      @notes = current_user
        .notes.priority
        .reverse
        .group_by { |note| note.priority }

      @categories = Category.all
    end
  end
end
