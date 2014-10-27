require 'rails_helper'

RSpec.describe "admin/shows/show", :type => :view do
  before(:each) do
    @admin_show = assign(:admin_show, Admin::Show.create!(
      :name => "Name",
      :slug => "Slug",
      :scheduled_start_at => "",
      :scheduled_finish_at => "",
      :duration_mm => "9.99",
      :description => "MyText",
      :payment_amount => "9.99",
      :video_teaser => "Video Teaser",
      :url_stream => "Url Stream",
      :url_stream_vip => "Url Stream Vip",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Video Teaser/)
    expect(rendered).to match(/Url Stream/)
    expect(rendered).to match(/Url Stream Vip/)
    expect(rendered).to match(/State/)
  end
end
