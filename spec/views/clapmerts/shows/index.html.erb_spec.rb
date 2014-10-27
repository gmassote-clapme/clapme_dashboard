require 'rails_helper'

RSpec.describe "clapmerts/shows/index", :type => :view do
  before(:each) do
    assign(:clapme_shows, [
      Clapmerts::Show.create!(
        :name => "Name",
        :duration_mm => 1,
        :description => "MyText",
        :payment_type => "Payment Type",
        :payment_amount => "9.99",
        :top_rewards => "MyText",
        :video_teaser => "MyText",
        :slug => "Slug",
        :state => "State"
      ),
      Clapmerts::Show.create!(
        :name => "Name",
        :duration_mm => 1,
        :description => "MyText",
        :payment_type => "Payment Type",
        :payment_amount => "9.99",
        :top_rewards => "MyText",
        :video_teaser => "MyText",
        :slug => "Slug",
        :state => "State"
      )
    ])
  end

  it "renders a list of clapmerts/shows" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Type".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
