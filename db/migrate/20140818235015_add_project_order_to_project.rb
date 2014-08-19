class AddProjectOrderToProject < ActiveRecord::Migration
  def change
    add_column :projects, :project_order, :integer
  end
end
