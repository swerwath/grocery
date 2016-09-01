class HomeController < ApplicationController
  def index
    if not user_signed_in?
      redirect_to new_user_session_path
    end
    @items = Item.where "bought = false"
  end
end
