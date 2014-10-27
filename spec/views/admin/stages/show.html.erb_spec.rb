require 'rails_helper'

RSpec.describe "admin/stages/show", :type => :view do
  before(:each) do
    @admin_stage = assign(:admin_stage, Admin::Stage.create!(
      :name => "Name",
      :slug => "Slug",
      :description => "MyText",
      :has_partner => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
