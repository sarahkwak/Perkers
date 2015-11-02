class Perk < ActiveRecord::Base
  has_one :brand
  validates :name, presence: true
end
