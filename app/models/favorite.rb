class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :perk_category
end
