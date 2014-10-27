require 'rails_helper'

RSpec.describe "admin/partners/new", :type => :view do
  before(:each) do
    assign(:admin_partner, Admin::Partner.new(
      :name => "MyString",
      :email => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new admin_partner form" do
    render

    assert_select "form[action=?][method=?]", admin_partners_path, "post" do

      assert_select "input#admin_partner_name[name=?]", "admin_partner[name]"

      assert_select "input#admin_partner_email[name=?]", "admin_partner[email]"

      assert_select "textarea#admin_partner_description[name=?]", "admin_partner[description]"
    end
  end
end
