class AddCategoryReferenceToNews < ActiveRecord::Migration[6.1]
  def change
    add_reference :news, :category, null: false, foreign_key: true
  end
end
