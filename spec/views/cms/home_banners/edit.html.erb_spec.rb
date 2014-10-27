require 'rails_helper'

RSpec.describe "cms/home_banners/edit", :type => :view do
  before(:each) do
    @cms_home_banner = assign(:cms_home_banner, Cms::HomeBanner.create!(
      :name => "MyString",
      :redirect_url => "MyText",
      :is_visible => false
    ))
  end

  it "renders the edit cms_home_banner form" do
    render

    assert_select "form[action=?][method=?]", cms_home_banner_path(@cms_home_banner), "post" do

      assert_select "input#cms_home_banner_name[name=?]", "cms_home_banner[name]"

      assert_select "textarea#cms_home_banner_redirect_url[name=?]", "cms_home_banner[redirect_url]"

      assert_select "input#cms_home_banner_is_visible[name=?]", "cms_home_banner[is_visible]"
    end
  end
end
