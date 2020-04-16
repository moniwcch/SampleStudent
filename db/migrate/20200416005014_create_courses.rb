class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end
