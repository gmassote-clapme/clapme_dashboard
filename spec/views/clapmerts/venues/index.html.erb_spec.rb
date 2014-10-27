require 'rails_helper'

RSpec.describe "clapmerts/venues/index", :type => :view do
  before(:each) do
    assign(:clapme_venues, [
      Clapmerts::Venue.create!(
        :name => "Name",
        :email => "Email",
        :description => "Description",
        :venue_type => "Venue Type",
        :phone => "Phone",
        :slug => "Slug",
        :state => "State",
        :confirmation_token => "Confirmation Token"
      ),
      Clapmerts::Venue.create!(
        :name => "Name",
        :email => "Email",
        :description => "Description",
        :venue_type => "Venue Type",
        :phone => "Phone",
        :slug => "Slug",
        :state => "State",
        :confirmation_token => "Confirmation Token"
      )
    ])
  end

  it "renders a list of clapmerts/venues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Venue Type".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Confirmation Token".to_s, :count => 2
  end
end
