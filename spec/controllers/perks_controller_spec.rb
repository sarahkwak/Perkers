require 'spec_helper'

describe PerksController do
  describe "GET 'index'" do
    it "returns http success" do
      get :index, nil, valid_session
      expect { response.should be_success }
    end
  end

  describe "GET 'show'" do
    it "returns http success and shows users favorites" do
      get :show, {id: news_item.id}, valid_session
      expect { response.should be_success }
      expect(response.body).to include(favorite.name)
    end
  end
end
