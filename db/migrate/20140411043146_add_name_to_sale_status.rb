class AddNameToSaleStatus < ActiveRecord::Migration
  def change
    add_column :sale_statuses, :name, :string
  end
end
