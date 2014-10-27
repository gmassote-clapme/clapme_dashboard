require 'rails_helper'

RSpec.describe "admin/schedules/index", :type => :view do
  before(:each) do
    assign(:admin_schedules, [
      Admin::Schedule.create!(
        :name => "Name",
        :concurrent_events_enable => false
      ),
      Admin::Schedule.create!(
        :name => "Name",
        :concurrent_events_enable => false
      )
    ])
  end

  it "renders a list of admin/schedules" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
