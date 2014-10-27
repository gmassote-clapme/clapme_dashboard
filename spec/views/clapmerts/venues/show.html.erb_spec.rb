require 'rails_helper'

RSpec.describe "clapmerts/venues/show", :type => :view do
  before(:each) do
    @clapme_venue = assign(:clapme_venue, Clapmerts::Venue.create!(
      :name => "Name",
      :email => "Email",
      :description => "Description",
      :venue_type => "Venue Type",
      :phone => "Phone",
      :slug => "Slug",
      :state => "State",
      :confirmation_token => "Confirmation Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Venue Type/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Confirmation Token/)
  end
end
