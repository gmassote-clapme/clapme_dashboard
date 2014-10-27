require 'rails_helper'

RSpec.describe Api::Cms::Home::BannerController, :type => :controller do

  describe "GET index" do
    it "returns http success with correct attributes" do
      get :index
      expect(response).to be_success
    end
  end

end
