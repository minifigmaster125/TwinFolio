class CreateMusings < ActiveRecord::Migration
  def change
    create_table :musings do |t|
      t.string :title
      t.datetime :date
      t.text :post

      t.timestamps
    end
  end
end
