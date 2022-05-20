class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firsName, null: false
      t.string :lastName, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.string :photo
      t.datetime :discarded_at
      t.timestamps
    end
    # add index:
    add_index :users, :discarded_at
  end
end
