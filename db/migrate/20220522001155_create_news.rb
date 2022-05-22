class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :name, null: false
      t.text :content, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
