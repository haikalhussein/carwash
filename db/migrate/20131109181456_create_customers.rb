class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :num_plate
      t.integer :type_of_car
      t.integer :type_of_washing_cleaning_id
      t.boolean :is_member

      t.timestamps
    end
  end
end
