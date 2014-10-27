require 'rails_helper'

RSpec.describe "clapmerts/shows/new", :type => :view do
  before(:each) do
    assign(:clapme_show, Clapmerts::Show.new(
      :name => "MyString",
      :duration_mm => 1,
      :description => "MyText",
      :payment_type => "MyString",
      :payment_amount => "9.99",
      :top_rewards => "MyText",
      :video_teaser => "MyText",
      :slug => "MyString",
      :state => "MyString"
    ))
  end

  it "renders new clapmerts_show form" do
    render

    assert_select "form[action=?][method=?]", clapmerts_shows_path, "post" do

      assert_select "input#clapmerts_show_name[name=?]", "clapmerts_show[name]"

      assert_select "input#clapmerts_show_duration_mm[name=?]", "clapmerts_show[duration_mm]"

      assert_select "textarea#clapmerts_show_description[name=?]", "clapmerts_show[description]"

      assert_select "input#clapmerts_show_payment_type[name=?]", "clapmerts_show[payment_type]"

      assert_select "input#clapmerts_show_payment_amount[name=?]", "clapmerts_show[payment_amount]"

      assert_select "textarea#clapmerts_show_top_rewards[name=?]", "clapmerts_show[top_rewards]"

      assert_select "textarea#clapmerts_show_video_teaser[name=?]", "clapmerts_show[video_teaser]"

      assert_select "input#clapmerts_show_slug[name=?]", "clapmerts_show[slug]"

      assert_select "input#clapmerts_show_state[name=?]", "clapmerts_show[state]"
    end
  end
end
