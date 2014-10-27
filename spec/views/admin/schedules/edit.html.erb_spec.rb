require 'rails_helper'

RSpec.describe "admin/schedules/edit", :type => :view do
  before(:each) do
    @admin_schedule = assign(:admin_schedule, Admin::Schedule.create!(
      :name => "MyString",
      :concurrent_events_enable => false
    ))
  end

  it "renders the edit admin_schedule form" do
    render

    assert_select "form[action=?][method=?]", admin_schedule_path(@admin_schedule), "post" do

      assert_select "input#admin_schedule_name[name=?]", "admin_schedule[name]"

      assert_select "input#admin_schedule_concurrent_events_enable[name=?]", "admin_schedule[concurrent_events_enable]"
    end
  end
end
