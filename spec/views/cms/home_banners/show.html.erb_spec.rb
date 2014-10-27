require 'rails_helper'

RSpec.describe "cms/home_banners/show", :type => :view do
  before(:each) do
    @cms_home_banner = assign(:cms_home_banner, Cms::HomeBanner.create!(
      :name => "Name",
      :redirect_url => "MyText",
      :is_visible => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
