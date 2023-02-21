class AddAvtarToUser < ActiveRecord::Migration[7.0]
  def change

    add_column :users, :avtar, :attachment

  end
end
