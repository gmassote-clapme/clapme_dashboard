require "rails_helper"

RSpec.describe Clapmerts::ShowsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clapmerts/shows").to route_to("clapmerts/shows#index")
    end

    it "routes to #new" do
      expect(:get => "/clapmerts/shows/new").to route_to("clapmerts/shows#new")
    end

    it "routes to #show" do
      expect(:get => "/clapmerts/shows/1").to route_to("clapmerts/shows#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clapmerts/shows/1/edit").to route_to("clapmerts/shows#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clapmerts/shows").to route_to("clapmerts/shows#create")
    end

    it "routes to #update" do
      expect(:put => "/clapmerts/shows/1").to route_to("clapmerts/shows#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clapmerts/shows/1").to route_to("clapmerts/shows#destroy", :id => "1")
    end

  end
end
