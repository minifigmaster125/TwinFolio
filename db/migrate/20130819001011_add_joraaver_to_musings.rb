class AddJoraaverToMusings < ActiveRecord::Migration
  def change
    add_column :musings, :joraaver, :boolean
  end
end
