class AddProjectToElement < ActiveRecord::Migration
  def change
    add_column :elements, :element, :string
    add_reference :elements, :project, index: true
  end
end
