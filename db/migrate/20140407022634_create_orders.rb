class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id
      t.date :order_date
      t.date :shipped_date
      t.string :ship_via
      t.string :shipping_company
      t.integer :tracking_number
      t.decimal :freight
      t.string :status

      t.timestamps
    end
  end
end
