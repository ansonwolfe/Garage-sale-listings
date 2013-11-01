class AddCategoryToProducts < ActiveRecord::Migration
  def change
    add_column :products, :category_id, :integer
    add_index :products, :category_id
  end
end
