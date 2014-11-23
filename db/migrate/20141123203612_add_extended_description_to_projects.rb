class AddExtendedDescriptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :extended_description, :text
  end
end
