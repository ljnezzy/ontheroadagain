class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.decimal :price
      t.text :features

      t.timestamps
    end
  end
end
