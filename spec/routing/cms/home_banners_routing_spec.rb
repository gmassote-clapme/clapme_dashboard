require "rails_helper"

RSpec.describe Cms::HomeBannersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cms/home_banners").to route_to("cms/home_banners#index")
    end

    it "routes to #new" do
      expect(:get => "/cms/home_banners/new").to route_to("cms/home_banners#new")
    end

    it "routes to #show" do
      expect(:get => "/cms/home_banners/1").to route_to("cms/home_banners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cms/home_banners/1/edit").to route_to("cms/home_banners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cms/home_banners").to route_to("cms/home_banners#create")
    end

    it "routes to #update" do
      expect(:put => "/cms/home_banners/1").to route_to("cms/home_banners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cms/home_banners/1").to route_to("cms/home_banners#destroy", :id => "1")
    end

  end
end
