class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :image
      t.string :content
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :activities, :discarded_at
  end
end
