require 'rails_helper'

RSpec.describe "Directories", type: :request do
  describe "GET /directories" do
    it "works! (now write some real specs)" do
      get directories_path
      expect(response).to have_http_status(200)
    end
  end
end
