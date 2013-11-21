class CreateTypeOfCleaningAndWashings < ActiveRecord::Migration
  def change
    create_table :type_of_cleaning_and_washings do |t|
      t.string :name
      t.float :price
      t.float :mem_price

      t.timestamps
    end
  end
end
