class AddSaleStatusToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sale_status, :string
  end
end
