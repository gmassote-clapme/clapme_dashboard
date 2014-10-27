require 'rails_helper'

RSpec.describe "clapmerts/venues/new", :type => :view do
  before(:each) do
    assign(:clapme_venue, Clapmerts::Venue.new(
      :name => "MyString",
      :email => "MyString",
      :description => "MyString",
      :venue_type => "MyString",
      :phone => "MyString",
      :slug => "MyString",
      :state => "MyString",
      :confirmation_token => "MyString"
    ))
  end

  it "renders new clapmerts_venue form" do
    render

    assert_select "form[action=?][method=?]", clapmerts_venues_path, "post" do

      assert_select "input#clapmerts_venue_name[name=?]", "clapmerts_venue[name]"

      assert_select "input#clapmerts_venue_email[name=?]", "clapmerts_venue[email]"

      assert_select "input#clapmerts_venue_description[name=?]", "clapmerts_venue[description]"

      assert_select "input#clapmerts_venue_venue_type[name=?]", "clapmerts_venue[venue_type]"

      assert_select "input#clapmerts_venue_phone[name=?]", "clapmerts_venue[phone]"

      assert_select "input#clapmerts_venue_slug[name=?]", "clapmerts_venue[slug]"

      assert_select "input#clapmerts_venue_state[name=?]", "clapmerts_venue[state]"

      assert_select "input#clapmerts_venue_confirmation_token[name=?]", "clapmerts_venue[confirmation_token]"
    end
  end
end
