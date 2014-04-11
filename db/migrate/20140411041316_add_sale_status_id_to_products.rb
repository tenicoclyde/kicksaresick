class AddSaleStatusIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sale_status_id, :integer
  end
end
