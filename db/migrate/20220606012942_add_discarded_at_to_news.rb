class AddDiscardedAtToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :discarded_at, :datetime
    add_index :news, :discarded_at
  end
end
