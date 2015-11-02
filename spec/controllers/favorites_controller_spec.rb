require 'spec_helper'

RSpec.describe FavoritesController, :type => :controller do  
  describe "GET 'create'" do
    login_user

    it "returns http success" do
      get :create, use_route: 'favorite/'
      expect(response.status).to eq(200)
    end

    it "should have a current_user" do
      subject.current_user.should_not be_nil
    end

    it "should create instance of favorite" do
      expect {Favorite.create}.to change{ Favorite.count }.by(1)
    end 
  end

  describe "DELETE 'unfavorite'" do
    it 'destroys the requested favorite instance' do 
      expect(response.status).to eq(200)
      expect{ Favorite.unfavorite(1) }.to change{Favorite.count }.by(-1)
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      expect(response.status).to eq(200)
    end
end