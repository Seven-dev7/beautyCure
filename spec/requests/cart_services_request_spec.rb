require 'rails_helper'

RSpec.describe "CartServices", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/cart_services/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/cart_services/show"
      expect(response).to have_http_status(:success)
    end
  end

end
