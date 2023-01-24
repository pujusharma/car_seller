class RemoveMakFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :mak
  end
end
