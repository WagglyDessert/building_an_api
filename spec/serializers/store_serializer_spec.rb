require "rails_helper"

RSpec.describe StoreSerializer, type: :request do 
  describe "serializing" do 
    it "can work" do 
      create_list(:store, 5)

      get "/api/v1/stores"

      expect(response).to be_successful
      data = JSON.parse(response.body, symbolize_names: true)
      store = data[:data][0]
      expect(store).to have_key(:id)
      expect(store[:id]).to be_a String

    end
  end
end