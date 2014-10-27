class CreateCmsHomeBanners < ActiveRecord::Migration
  def change
    create_table :cms_home_banners do |t|
      t.string :name
      t.text :redirect_url
      t.datetime :visible_start_at
      t.datetime :visible_finish_at
      t.boolean :is_visible

      t.timestamps
    end

    add_attachment :cms_home_banners, :image
  end
end
