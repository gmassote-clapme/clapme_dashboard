require 'rails_helper'

RSpec.describe "clapmerts/shows/show", :type => :view do
  before(:each) do
    @clapme_show = assign(:clapme_show, Clapmerts::Show.create!(
      :name => "Name",
      :duration_mm => 1,
      :description => "MyText",
      :payment_type => "Payment Type",
      :payment_amount => "9.99",
      :top_rewards => "MyText",
      :video_teaser => "MyText",
      :slug => "Slug",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Payment Type/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/State/)
  end
end
