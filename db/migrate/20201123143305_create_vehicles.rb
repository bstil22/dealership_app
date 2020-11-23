class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.integer :price
      t.string :make
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
