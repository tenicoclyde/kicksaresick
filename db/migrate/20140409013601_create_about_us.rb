class CreateAboutUs < ActiveRecord::Migration
  def change
    create_table :about_us do |t|
      t.string :description

      t.timestamps
    end
  end
end
