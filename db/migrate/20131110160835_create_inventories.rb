class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :name
      t.integer :quantity
      t.float :per_price
      t.float :total_cost

      t.timestamps
    end
  end
end
