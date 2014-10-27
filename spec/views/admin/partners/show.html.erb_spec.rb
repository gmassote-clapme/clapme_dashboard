require 'rails_helper'

RSpec.describe "admin/partners/show", :type => :view do
  before(:each) do
    @admin_partner = assign(:admin_partner, Admin::Partner.create!(
      :name => "Name",
      :email => "Email",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/MyText/)
  end
end
