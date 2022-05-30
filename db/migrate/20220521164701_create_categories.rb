class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :description
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :categories, :discarded_at
  end
end
