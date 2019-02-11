require "rails_helper"

RSpec.describe DirectoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/directories").to route_to("directories#index")
    end

    it "routes to #new" do
      expect(:get => "/directories/new").to route_to("directories#new")
    end

    it "routes to #show" do
      expect(:get => "/directories/1").to route_to("directories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/directories/1/edit").to route_to("directories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/directories").to route_to("directories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/directories/1").to route_to("directories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/directories/1").to route_to("directories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/directories/1").to route_to("directories#destroy", :id => "1")
    end
  end
end
