class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string  :email
      t.integer :phone
      t.string  :address

      t.timestamps
    end
  end
end
