require 'rails_helper'

RSpec.describe "/users", type: :request do

  describe "GET /index" do
    it "renders a successful response" do
      create :user
      get users_url, as: :json
      expect(response).to be_successful
    end
  end
end
