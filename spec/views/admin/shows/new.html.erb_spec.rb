require 'rails_helper'

RSpec.describe "admin/shows/new", :type => :view do
  before(:each) do
    assign(:admin_show, Admin::Show.new(
      :name => "MyString",
      :slug => "MyString",
      :scheduled_start_at => "",
      :scheduled_finish_at => "",
      :duration_mm => "9.99",
      :description => "MyText",
      :payment_amount => "9.99",
      :video_teaser => "MyString",
      :url_stream => "MyString",
      :url_stream_vip => "MyString",
      :state => "MyString"
    ))
  end

  it "renders new admin_show form" do
    render

    assert_select "form[action=?][method=?]", admin_shows_path, "post" do

      assert_select "input#admin_show_name[name=?]", "admin_show[name]"

      assert_select "input#admin_show_slug[name=?]", "admin_show[slug]"

      assert_select "input#admin_show_scheduled_start_at[name=?]", "admin_show[scheduled_start_at]"

      assert_select "input#admin_show_scheduled_finish_at[name=?]", "admin_show[scheduled_finish_at]"

      assert_select "input#admin_show_duration_mm[name=?]", "admin_show[duration_mm]"

      assert_select "textarea#admin_show_description[name=?]", "admin_show[description]"

      assert_select "input#admin_show_payment_amount[name=?]", "admin_show[payment_amount]"

      assert_select "input#admin_show_video_teaser[name=?]", "admin_show[video_teaser]"

      assert_select "input#admin_show_url_stream[name=?]", "admin_show[url_stream]"

      assert_select "input#admin_show_url_stream_vip[name=?]", "admin_show[url_stream_vip]"

      assert_select "input#admin_show_state[name=?]", "admin_show[state]"
    end
  end
end
