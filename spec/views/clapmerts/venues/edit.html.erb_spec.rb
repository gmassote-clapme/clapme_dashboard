require 'rails_helper'

RSpec.describe "clapmerts/venues/edit", :type => :view do
  before(:each) do
    @clapme_venue = assign(:clapme_venue, Clapmerts::Venue.create!(
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

  it "renders the edit clapmerts_venue form" do
    render

    assert_select "form[action=?][method=?]", clapmerts_venue_path(@clapme_venue), "post" do

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
