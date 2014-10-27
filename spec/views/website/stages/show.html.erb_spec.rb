require 'rails_helper'

RSpec.describe "website/stages/show", :type => :view do
  before(:each) do
    @clapme_stage = assign(:clapme_stage, Clapme::Stage.create!(
      :name => "Name",
      :description => "MyText",
      :slug => "Slug",
      :has_partner => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/false/)
  end
end
