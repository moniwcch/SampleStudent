class AddStudentId < ActiveRecord::Migration[6.0]
  def change
    add_column:categories,:student_id,:integer
  
  end
end
