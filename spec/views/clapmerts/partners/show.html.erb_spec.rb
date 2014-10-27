require 'rails_helper'

RSpec.describe "clapmerts/partners/show", :type => :view do
  before(:each) do
    @clapme_partner = assign(:clapme_partner, Clapmerts::Partner.create!(
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
