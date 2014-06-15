class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :name
      t.string :url
      t.string :html_tag
      t.string :html_subtag
      t.integer :order

      t.timestamps
    end
  end
end
