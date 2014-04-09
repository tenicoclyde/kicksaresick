class CreateHompages < ActiveRecord::Migration
  def change
    create_table :hompages do |t|

      t.timestamps
    end
  end
end
