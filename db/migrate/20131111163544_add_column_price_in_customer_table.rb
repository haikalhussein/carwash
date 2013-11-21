class AddColumnPriceInCustomerTable < ActiveRecord::Migration
  def up
    add_column :customers, :price, :float
  end

  def down
    remove_column :customers, :price
  end
end