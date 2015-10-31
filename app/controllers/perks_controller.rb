class PerksController < ApplicationController
  def index
    @categories = Category.select(:name).distinct
    # @perks = Perk.paginate(:page => params[:page], :per_page => 10)
    render 'perks'
  end 

  def favorite
  end

  def unfavorite
  end

  def user_favorite_2
    # @recent_favorite = []
    # if current_user
    #   user_favorite = Favorite.where(user_id: current_user.id)
    #   @perks = user_favorite.perk_id
  end

end
