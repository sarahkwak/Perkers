require 'spec_helper'

RSpec.describe Perk, :type => :model do
  it "should has one brand" do
    t = Perk.reflect_on_association(:brand)
    t.macro.should == :has_one
  end

  it "is invalid without name" do
      expect { Favorite.create!(name: nil) }.to raise_error
  end
end