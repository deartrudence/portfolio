class CreateSliderImages < ActiveRecord::Migration
  def change
    create_table :slider_images do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end
  end
end
