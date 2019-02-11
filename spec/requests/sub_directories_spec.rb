require 'rails_helper'

RSpec.describe "SubDirectories", type: :request do
  describe "GET /sub_directories" do
    it "works! (now write some real specs)" do
      get sub_directories_path
      expect(response).to have_http_status(200)
    end
  end
end
