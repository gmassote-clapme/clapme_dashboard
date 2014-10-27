require "rails_helper"

RSpec.describe Admin::PartnersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/partners").to route_to("admin/partners#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/partners/new").to route_to("admin/partners#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/partners/1").to route_to("admin/partners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/partners/1/edit").to route_to("admin/partners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/partners").to route_to("admin/partners#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/partners/1").to route_to("admin/partners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/partners/1").to route_to("admin/partners#destroy", :id => "1")
    end

  end
end
