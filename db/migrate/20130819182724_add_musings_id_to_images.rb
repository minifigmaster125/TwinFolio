class AddMusingsIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :musing_id, :int
  end
end
