require 'rails_helper'

RSpec.describe "admin/stages/new", :type => :view do
  before(:each) do
    assign(:admin_stage, Admin::Stage.new(
      :name => "MyString",
      :slug => "MyString",
      :description => "MyText",
      :has_partner => false
    ))
  end

  it "renders new admin_stage form" do
    render

    assert_select "form[action=?][method=?]", admin_stages_path, "post" do

      assert_select "input#admin_stage_name[name=?]", "admin_stage[name]"

      assert_select "input#admin_stage_slug[name=?]", "admin_stage[slug]"

      assert_select "textarea#admin_stage_description[name=?]", "admin_stage[description]"

      assert_select "input#admin_stage_has_partner[name=?]", "admin_stage[has_partner]"
    end
  end
end
