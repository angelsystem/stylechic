class AddCategoryIdToShot < ActiveRecord::Migration
  def change
    add_column :shots, :category_id, :integer
  end
end
