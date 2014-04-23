class AddPstToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :pst, :decimal
  end
end
