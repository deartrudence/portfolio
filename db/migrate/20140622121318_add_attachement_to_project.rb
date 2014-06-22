class AddAttachementToProject < ActiveRecord::Migration
  def change
    add_attachment :projects, :feature_img
  end
end
