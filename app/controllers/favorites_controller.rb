class FavoritesController < ApplicationController
  
  def create
    if current_user
    favorite = Favorite.create(user_id: current_user.id, perk_category_id: PerkCategory.where(perk_id: params[:id]).first.id)
    end
  end 

  def unfavorite
    Favorite.find(params[:id]).destroy!
    redirect_to '/favorites'
  end

  def show
    @favorites = Favorite.where(user_id: current_user.id)
    p "&" * 30
    p Favorite.where(user_id: current_user).count
    render 'favorite_all'
  end 
  def user_favorite_2
    if current_user 
      user_favorite = Favorite.where(user_id: current_user.id).last(2)
      for i in 0..(user_favorite.length-1)
        fpc_id = user_favorite.perk_category_id
       @favorite_category = Category.find(PerkCategory.find(fpc_id).category_id)
       @favorite_brand = Brand.find(PerkCategory.find(fpc_id).perk_id)
       @favorite_detail = Perk.find(PerkCategory.find(fpc_id).perk_id).details
      end
    end
  end
end
