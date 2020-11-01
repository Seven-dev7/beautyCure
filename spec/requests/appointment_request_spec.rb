require 'rails_helper'

RSpec.describe "Appointments", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/appointment/show"
      expect(response).to have_http_status(:success)
    end
  end

end
