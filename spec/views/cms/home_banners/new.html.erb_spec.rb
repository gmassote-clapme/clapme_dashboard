require 'rails_helper'

RSpec.describe "cms/home_banners/new", :type => :view do
  before(:each) do
    assign(:cms_home_banner, Cms::HomeBanner.new(
      :name => "MyString",
      :redirect_url => "MyText",
      :is_visible => false
    ))
  end

  it "renders new cms_home_banner form" do
    render

    assert_select "form[action=?][method=?]", cms_home_banners_path, "post" do

      assert_select "input#cms_home_banner_name[name=?]", "cms_home_banner[name]"

      assert_select "textarea#cms_home_banner_redirect_url[name=?]", "cms_home_banner[redirect_url]"

      assert_select "input#cms_home_banner_is_visible[name=?]", "cms_home_banner[is_visible]"
    end
  end
end
