require "rails_helper"

RSpec.describe Admin::SchedulesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/schedules").to route_to("admin/schedules#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/schedules/new").to route_to("admin/schedules#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/schedules/1").to route_to("admin/schedules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/schedules/1/edit").to route_to("admin/schedules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/schedules").to route_to("admin/schedules#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/schedules/1").to route_to("admin/schedules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/schedules/1").to route_to("admin/schedules#destroy", :id => "1")
    end

  end
end
