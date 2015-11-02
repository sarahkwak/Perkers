require 'spec_helper'

RSpec.describe PerksController, :type => :controller do  
  describe "GET 'index'" do
    login_user

    it "should have a current_user" do
      subject.current_user.should_not be_nil
    end

    it "returns http success" do
      get :index
      expect(response.status).to eq(200)
    end

    it "shows instance of brand" do 
      brand = Brand.create(name: 'apple', location: '94070', perk_id: 1)
      response.body.should include brand.name
    end 
  end

  describe "GET 'details'" do
    it "returns http success and shows perk details" do
      perk = Perk.create(name: 'apple 20% discount')
      response.body.should include Brand.where(perk_id: perk.id).name
    end
  end
end