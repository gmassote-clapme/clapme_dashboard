require "rails_helper"

RSpec.describe Clapmerts::PartnersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clapmerts/partners").to route_to("clapmerts/partners#index")
    end

    it "routes to #new" do
      expect(:get => "/clapmerts/partners/new").to route_to("clapmerts/partners#new")
    end

    it "routes to #show" do
      expect(:get => "/clapmerts/partners/1").to route_to("clapmerts/partners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clapmerts/partners/1/edit").to route_to("clapmerts/partners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clapmerts/partners").to route_to("clapmerts/partners#create")
    end

    it "routes to #update" do
      expect(:put => "/clapmerts/partners/1").to route_to("clapmerts/partners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clapmerts/partners/1").to route_to("clapmerts/partners#destroy", :id => "1")
    end

  end
end
