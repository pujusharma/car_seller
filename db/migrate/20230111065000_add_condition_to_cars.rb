class AddConditionToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :condition, :boolean
    add_column :cars, :price, :integer
    add_column :cars, :model, :string
    add_column :cars, :make, :string
    add_column :cars, :mileage, :integer
    add_column :cars, :engine_size, :string
    add_column :cars, :power, :integer
    add_column :cars, :doors, :integer
    add_column :cars, :number_of_seats, :integer
    add_column :cars, :fuel, :integer
    add_column :cars, :gearbox, :boolean
    
  end
end
