class PerksController < ApplicationController
  def index
    @categories = Category.select(:name).distinct
    if current_user 
      @user_favorite = Favorite.where(user_id: current_user.id).last(2)
    end
    render 'perks'
  end 

end
