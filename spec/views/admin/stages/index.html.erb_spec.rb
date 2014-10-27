require 'rails_helper'

RSpec.describe "admin/stages/index", :type => :view do
  before(:each) do
    assign(:admin_stages, [
      Admin::Stage.create!(
        :name => "Name",
        :slug => "Slug",
        :description => "MyText",
        :has_partner => false
      ),
      Admin::Stage.create!(
        :name => "Name",
        :slug => "Slug",
        :description => "MyText",
        :has_partner => false
      )
    ])
  end

  it "renders a list of admin/stages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
