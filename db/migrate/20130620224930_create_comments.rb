class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.references :product

      t.timestamps
    end
    add_index :comments, :product_id
  end
end
