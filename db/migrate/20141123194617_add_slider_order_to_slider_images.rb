class AddSliderOrderToSliderImages < ActiveRecord::Migration
  def change
    add_column :slider_images, :slider_order, :integer
  end
end
