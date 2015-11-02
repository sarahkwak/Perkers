class Favorite < ActiveRecord::Base
  validates :user_id, presence: true
  validates :perk_category_id, presence: true
  belongs_to :user
  belongs_to :perk_category
end
