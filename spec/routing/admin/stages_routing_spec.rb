require "rails_helper"

RSpec.describe Admin::StagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/stages").to route_to("admin/stages#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/stages/new").to route_to("admin/stages#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/stages/1").to route_to("admin/stages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/stages/1/edit").to route_to("admin/stages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/stages").to route_to("admin/stages#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/stages/1").to route_to("admin/stages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/stages/1").to route_to("admin/stages#destroy", :id => "1")
    end

  end
end
