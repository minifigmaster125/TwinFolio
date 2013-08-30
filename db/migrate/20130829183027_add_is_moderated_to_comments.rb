class AddIsModeratedToComments < ActiveRecord::Migration
  def change
    add_column :comments, :is_moderated, :boolean
  end
end
