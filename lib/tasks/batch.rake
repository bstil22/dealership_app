namespace :batch do
  task update_vehicle_pricing: :environment do
    begin
      Vehicle.all.each do |vehicle|
        new_price = vehicle.price * 0.98
        vehicle.update!(price: new_price)
      end
    rescue => e
      # do something with error ?
      puts "Error: #{e.inspect}"
    end
  end
end
