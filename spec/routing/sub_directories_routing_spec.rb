require "rails_helper"

RSpec.describe SubDirectoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/sub_directories").to route_to("sub_directories#index")
    end

    it "routes to #new" do
      expect(:get => "/sub_directories/new").to route_to("sub_directories#new")
    end

    it "routes to #show" do
      expect(:get => "/sub_directories/1").to route_to("sub_directories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sub_directories/1/edit").to route_to("sub_directories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sub_directories").to route_to("sub_directories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sub_directories/1").to route_to("sub_directories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sub_directories/1").to route_to("sub_directories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sub_directories/1").to route_to("sub_directories#destroy", :id => "1")
    end
  end
end
