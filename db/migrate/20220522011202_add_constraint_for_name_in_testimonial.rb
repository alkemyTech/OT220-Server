class AddConstraintForNameInTestimonial < ActiveRecord::Migration[6.1]
  def change
    change_column :testimonials, :name, :string, null: false
  end
end
