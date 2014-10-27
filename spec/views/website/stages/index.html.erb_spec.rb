require 'rails_helper'

RSpec.describe "website/stages/index", :type => :view do
  before(:each) do
    assign(:clapme_stages, [
      Clapme::Stage.create!(
        :name => "Name",
        :description => "MyText",
        :slug => "Slug",
        :has_partner => false
      ),
      Clapme::Stage.create!(
        :name => "Name",
        :description => "MyText",
        :slug => "Slug",
        :has_partner => false
      )
    ])
  end

  it "renders a list of website/stages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
