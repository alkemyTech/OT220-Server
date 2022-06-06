class RemoveNewsReferenceToCategories < ActiveRecord::Migration[6.1]
  def change
    remove_reference :categories, :news, index: true, foreign_key: true
  end
end
