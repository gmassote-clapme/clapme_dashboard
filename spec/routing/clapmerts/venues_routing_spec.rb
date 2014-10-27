require "rails_helper"

RSpec.describe Clapmerts::VenuesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clapmerts/venues").to route_to("clapmerts/venues#index")
    end

    it "routes to #new" do
      expect(:get => "/clapmerts/venues/new").to route_to("clapmerts/venues#new")
    end

    it "routes to #show" do
      expect(:get => "/clapmerts/venues/1").to route_to("clapmerts/venues#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clapmerts/venues/1/edit").to route_to("clapmerts/venues#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clapmerts/venues").to route_to("clapmerts/venues#create")
    end

    it "routes to #update" do
      expect(:put => "/clapmerts/venues/1").to route_to("clapmerts/venues#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clapmerts/venues/1").to route_to("clapmerts/venues#destroy", :id => "1")
    end

  end
end
