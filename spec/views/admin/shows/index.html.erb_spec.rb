require 'rails_helper'

RSpec.describe "admin/shows/index", :type => :view do
  before(:each) do
    assign(:admin_shows, [
      Admin::Show.create!(
        :name => "Name",
        :slug => "Slug",
        :scheduled_start_at => "",
        :scheduled_finish_at => "",
        :duration_mm => "9.99",
        :description => "MyText",
        :payment_amount => "9.99",
        :video_teaser => "Video Teaser",
        :url_stream => "Url Stream",
        :url_stream_vip => "Url Stream Vip",
        :state => "State"
      ),
      Admin::Show.create!(
        :name => "Name",
        :slug => "Slug",
        :scheduled_start_at => "",
        :scheduled_finish_at => "",
        :duration_mm => "9.99",
        :description => "MyText",
        :payment_amount => "9.99",
        :video_teaser => "Video Teaser",
        :url_stream => "Url Stream",
        :url_stream_vip => "Url Stream Vip",
        :state => "State"
      )
    ])
  end

  it "renders a list of admin/shows" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Video Teaser".to_s, :count => 2
    assert_select "tr>td", :text => "Url Stream".to_s, :count => 2
    assert_select "tr>td", :text => "Url Stream Vip".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
