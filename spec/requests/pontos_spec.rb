require 'rails_helper'

RSpec.describe "Pontos", :type => :request do
  describe "GET /pontos" do
    it "works! (now write some real specs)" do
      get pontos_path
      expect(response.status).to be(200)
    end
  end
end
