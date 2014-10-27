require 'rails_helper'

RSpec.describe "clapmerts/partners/index", :type => :view do
  before(:each) do
    assign(:clapme_partners, [
      Clapmerts::Partner.create!(
        :name => "Name",
        :email => "Email",
        :description => "MyText"
      ),
      Clapmerts::Partner.create!(
        :name => "Name",
        :email => "Email",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of clapmerts/partners" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
