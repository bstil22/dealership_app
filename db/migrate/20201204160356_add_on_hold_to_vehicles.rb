class AddOnHoldToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :on_hold, :boolean, default: false
  end
end
