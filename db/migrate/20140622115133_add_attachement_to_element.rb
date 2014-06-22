class AddAttachementToElement < ActiveRecord::Migration
  def change
    add_attachment :elements, :element_img
  end
end
