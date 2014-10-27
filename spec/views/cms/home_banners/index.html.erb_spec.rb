require 'rails_helper'

RSpec.describe "cms/home_banners/index", :type => :view do
  before(:each) do
    assign(:cms_home_banners, [
      Cms::HomeBanner.create!(
        :name => "Name",
        :redirect_url => "MyText",
        :is_visible => false
      ),
      Cms::HomeBanner.create!(
        :name => "Name",
        :redirect_url => "MyText",
        :is_visible => false
      )
    ])
  end

  it "renders a list of cms/home_banners" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
