class AddCategoryId < ActiveRecord::Migration[6.0]
  def change
    add_column:students,:category_id,:integer
  end
end
