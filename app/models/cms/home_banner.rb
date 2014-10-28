class Cms::HomeBanner < ActiveRecord::Base

  attr_accessor :image_remote_url
  attr_reader :visible_start_time_at

  validates :name, presence: true, length: { maximum: 64 }
  validates :redirect_url, presence: true, url: true
  validates :visible_start_at, presence: true
  validates :visible_finish_at, presence: true
  validates :is_visible, inclusion: {in: [true, false]}

  validate :visible_start_at_cannot_be_greater_than_visible_finish_at

  has_attached_file :image,
                    styles: {thumb: '1280x500#'},
                    # url: "/cw/ppc/:class/:attachment/:style/:slug_name.:extension",
                    default_url: "undefined/profile_:style_photo.png"
  validates_attachment :image,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  validates :image, dimensions: { width: 1920, height: 750 }

  def image_remote_url=(url_value)
    self.image = URI.parse(url_value)
  end

  def visible_start_date_at
    Clapme::Util::DateFormatter.date(self.visible_start_at) if self.visible_start_at
  end

  def visible_finish_date_at
    Clapme::Util::DateFormatter.date(self.visible_finish_at) if self.visible_finish_at
  end

  def visible_start_time_at
    Clapme::Util::DateFormatter.short_time(self.visible_start_at) if self.visible_start_at
  end

  def visible_finish_time_at
    Clapme::Util::DateFormatter.short_time(self.visible_finish_at) if self.visible_finish_at
  end

  private

    def visible_start_at_cannot_be_greater_than_visible_finish_at
      if self.visible_finish_at and self.visible_finish_at and (self.visible_start_at > self.visible_finish_at)
        errors.add(:visible_start_at, "cannot be greater than visible finish at")
      end
    end
end
