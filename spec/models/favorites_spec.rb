require 'spec_helper'

RSpec.describe Favorite, :type => :model do
  context "favorite with validation" do 
    it "is invalid without user_id and perk_category_id" do
      expect { Favorite.create!(user_id: nil, perk_category_id: 2) }.to raise_error
    end
   
    it "is invalid without user_id and perk_category_id" do
      expect { Favorite.create!(user_id: 2, perk_category_id: nil) }.to raise_error
    end
  end
end