class RemoveColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column:courses,:password
  end
end
