class AddColumnsInCustomersTable < ActiveRecord::Migration
  def up
    add_column :customers, :name, :string
    add_column :customers, :address, :string
    add_column :customers, :email, :string
    add_column :customers, :type_of_members, :string
    add_column :customers, :mobile_number, :string
    add_column :customers, :paid, :boolean
  end

  def down
    remove_column :customers, :name
    remove_column :customers, :address
    remove_column :customers, :email
    remove_column :customers, :type_of_members
    remove_column :customers, :mobile_number
    remove_column :customers, :paid
  end
end