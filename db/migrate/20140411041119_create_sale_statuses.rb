class CreateSaleStatuses < ActiveRecord::Migration
  def change
    create_table :sale_statuses do |t|
      t.string :onsale

      t.timestamps
    end
  end
end
