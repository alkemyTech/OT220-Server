class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.integer :phone
      t.string :email
      t.string :message
      t.datetime :discarded_at

      t.timestamps
    end
  end
end
