class FavoritesController < ApplicationController
  def favorite
  end

  def unfavorite
  end

  def user_favorite_2
    if current_user 
      p "%" * 50
      user_favorite = Favorite.where(user_id: current_user.id).last(2)
      for i in 0..(user_favorite.length-1)
        fpc_id = user_favorite.perk_category_id
        p @favorite_category = Category.find(PerkCategory.find(fpc_id).category_id)
        p @favorite_brand = Brand.find(PerkCategory.find(fpc_id).perk_id)
        p @favorite_detail = Perk.find(PerkCategory.find(fpc_id).perk_id).details
      end
    end
  end
end
