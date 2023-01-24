class RemoveMakFromCar < ActiveRecord::Migration[7.0]
  def up
    remove_column :cars, :mak
  end
  def down
    add_column :cars, :mak, :string
  end

end
