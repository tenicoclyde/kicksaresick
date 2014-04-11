class AddOnsalePriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :onsale_price, :decimal
  end
end
