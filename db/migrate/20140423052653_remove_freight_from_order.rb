class RemoveFreightFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :freight, :decimal
  end
end
