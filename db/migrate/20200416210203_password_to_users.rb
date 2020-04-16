class PasswordToUsers < ActiveRecord::Migration[6.0]
  def change
  add_column:courses,:password,:string
  end
end