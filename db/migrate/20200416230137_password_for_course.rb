class PasswordForCourse < ActiveRecord::Migration[6.0]
  def change
    add_column:courses,:password_digest,:string
  end
end
