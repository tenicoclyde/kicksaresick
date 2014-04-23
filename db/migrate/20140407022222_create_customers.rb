class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.integer :phone
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end

end
