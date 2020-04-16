class AddCourseId < ActiveRecord::Migration[6.0]
  def change
    add_column:students,:course_id,:integer
  end
end
