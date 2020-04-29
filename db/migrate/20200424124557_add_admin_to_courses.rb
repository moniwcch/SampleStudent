class AddAdminToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses,:admin,:boolean, default:false
  end
end
