class RenameNameToMakeCars < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :name, :make
  end
end
