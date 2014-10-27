require 'rails_helper'

RSpec.describe "admin/schedules/new", :type => :view do
  before(:each) do
    assign(:admin_schedule, Admin::Schedule.new(
      :name => "MyString",
      :concurrent_events_enable => false
    ))
  end

  it "renders new admin_schedule form" do
    render

    assert_select "form[action=?][method=?]", admin_schedules_path, "post" do

      assert_select "input#admin_schedule_name[name=?]", "admin_schedule[name]"

      assert_select "input#admin_schedule_concurrent_events_enable[name=?]", "admin_schedule[concurrent_events_enable]"
    end
  end
end
