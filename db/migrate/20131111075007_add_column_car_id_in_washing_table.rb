class AddColumnCarIdInWashingTable < ActiveRecord::Migration
  def up
    add_column :type_of_cleaning_and_washings, :car_id, :integer
  end

  def down
    remove_column :type_of_cleaning_and_washings, :car_id
  end
end