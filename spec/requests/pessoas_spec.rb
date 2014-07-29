require 'rails_helper'

RSpec.describe "Pessoas", :type => :request do
  describe "GET /pessoas" do
    it "works! (now write some real specs)" do
      get pessoas_path
      expect(response.status).to be(200)
    end
  end
end
