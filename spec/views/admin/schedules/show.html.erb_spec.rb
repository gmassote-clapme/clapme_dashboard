require 'rails_helper'

RSpec.describe "admin/schedules/show", :type => :view do
  before(:each) do
    @admin_schedule = assign(:admin_schedule, Admin::Schedule.create!(
      :name => "Name",
      :concurrent_events_enable => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
  end
end
