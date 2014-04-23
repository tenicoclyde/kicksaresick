class RemoveRegionFromCustomer < ActiveRecord::Migration
  def change
    remove_column :customers, :region, :string
  end
end
