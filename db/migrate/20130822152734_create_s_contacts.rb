class CreateSContacts < ActiveRecord::Migration
  def change
    create_table :s_contacts do |t|
      t.string :name
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
