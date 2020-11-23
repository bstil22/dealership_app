class CreateInventoryAssignmentTable < ActiveRecord::Migration[5.1]
  def change
    create_table :inventory_assignments do |t|
      t.belongs_to :vehicle
      t.belongs_to :dealership
      t.timestamps
    end
  end
end
