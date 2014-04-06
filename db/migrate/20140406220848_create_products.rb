class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id
      t.string :description
      t.integer :brand_id
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
