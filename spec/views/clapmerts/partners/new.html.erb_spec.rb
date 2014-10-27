require 'rails_helper'

RSpec.describe "clapmerts/partners/new", :type => :view do
  before(:each) do
    assign(:clapme_partner, Clapmerts::Partner.new(
      :name => "MyString",
      :email => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new clapmerts_partner form" do
    render

    assert_select "form[action=?][method=?]", clapmerts_partners_path, "post" do

      assert_select "input#clapmerts_partner_name[name=?]", "clapmerts_partner[name]"

      assert_select "input#clapmerts_partner_email[name=?]", "clapmerts_partner[email]"

      assert_select "textarea#clapmerts_partner_description[name=?]", "clapmerts_partner[description]"
    end
  end
end
