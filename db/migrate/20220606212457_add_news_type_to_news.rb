class AddNewsTypeToNews < ActiveRecord::Migration[6.1]
  def change
    add_column :news, :news_type, :string
  end
end
