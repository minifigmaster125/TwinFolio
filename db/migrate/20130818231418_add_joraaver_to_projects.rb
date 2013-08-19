class AddJoraaverToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :joraaver, :boolean
  end
end
