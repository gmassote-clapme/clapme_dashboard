class Api::Cms::Home::BannerController < ApplicationController
  before_filter :set_access

  def set_access
    response.headers["Access-Control-Allow-Origin"] = "http://localhost:3000"
    # request.headers["Access-Control-Allow-Origin"] = "http://localhost:3000/*"
  end

  def index
    @cms_home_banners = Cms::HomeBanner.where(
      ':now >= visible_start_at AND :now <= visible_finish_at AND is_visible = :is_visible',
      now: Time.now,
      is_visible: true
    ).order(visible_finish_at: :asc).all
  end
end
