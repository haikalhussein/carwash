class RenameColumnInTypeOfCleaningAndWashingTable < ActiveRecord::Migration
  def up
    rename_column :customers, :type_of_washing_cleaning_id, :type_of_cleaning_and_washing_id
  end

  def down
    rename_column :customers, :type_of_cleaning_and_washing_id, :type_of_washing_cleaning_id
  end
end