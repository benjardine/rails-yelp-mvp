class RenamingPhoneNumColumnInRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :phone_num, :phone_number
  end
end
