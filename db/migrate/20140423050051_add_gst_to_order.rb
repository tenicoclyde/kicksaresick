class AddGstToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :gst, :decimal
  end
end
