class RenameColumnTypeOfCarInCustomerTable < ActiveRecord::Migration
  def up
    rename_column :customers, :type_of_car, :type_of_car_id
  end

  def down
    rename_column :customers, :type_of_car_id, :type_of_car
  end
end