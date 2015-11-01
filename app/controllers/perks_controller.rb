class PerksController < ApplicationController
  def index
    @categories = Category.select(:name).distinct
    if current_user 
      @user_favorite = Favorite.where(user_id: current_user.id).last(2)
    end
    @brands = Brand.all
    gon.brands = @brands
    @perks = Perk.paginate(:page => params[:page], :per_page => 10)
    render 'perks'
  end 

  def details
    @perk = Perk.find(params[:id])
  end 
end
