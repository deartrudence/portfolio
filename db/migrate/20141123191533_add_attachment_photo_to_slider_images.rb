class AddAttachmentPhotoToSliderImages < ActiveRecord::Migration
  def self.up
    change_table :slider_images do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :slider_images, :photo
  end
end
