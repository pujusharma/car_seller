class AddImageToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :image, :attachment
  end
end
