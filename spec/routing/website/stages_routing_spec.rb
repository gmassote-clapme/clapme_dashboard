require "rails_helper"

RSpec.describe Website::StagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/website/stages").to route_to("website/stages#index")
    end

    it "routes to #new" do
      expect(:get => "/website/stages/new").to route_to("website/stages#new")
    end

    it "routes to #show" do
      expect(:get => "/website/stages/1").to route_to("website/stages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/website/stages/1/edit").to route_to("website/stages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/website/stages").to route_to("website/stages#create")
    end

    it "routes to #update" do
      expect(:put => "/website/stages/1").to route_to("website/stages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/website/stages/1").to route_to("website/stages#destroy", :id => "1")
    end

  end
end
