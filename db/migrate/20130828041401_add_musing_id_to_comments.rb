class AddMusingIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :musing_id, :int
  end
end
