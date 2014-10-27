require 'rails_helper'

RSpec.describe "website/stages/edit", :type => :view do
  before(:each) do
    @clapme_stage = assign(:clapme_stage, Clapme::Stage.create!(
      :name => "MyString",
      :description => "MyText",
      :slug => "MyString",
      :has_partner => false
    ))
  end

  it "renders the edit website_stage form" do
    render

    assert_select "form[action=?][method=?]", website_stage_path(@clapme_stage), "post" do

      assert_select "input#website_stage_name[name=?]", "website_stage[name]"

      assert_select "textarea#website_stage_description[name=?]", "website_stage[description]"

      assert_select "input#website_stage_slug[name=?]", "website_stage[slug]"

      assert_select "input#website_stage_has_partner[name=?]", "website_stage[has_partner]"
    end
  end
end
