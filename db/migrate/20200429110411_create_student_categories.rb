class CreateStudentCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :student_categories do |t|
      t.integer :student_id
      t.integer :category_id
    end
  end
end
