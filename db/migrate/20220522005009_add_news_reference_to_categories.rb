class AddNewsReferenceToCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :news, null: false, foreign_key: true
  end
end
