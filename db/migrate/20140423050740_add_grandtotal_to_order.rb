class AddGrandtotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :grandtotal, :decimal
  end
end
