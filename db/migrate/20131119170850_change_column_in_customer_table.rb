class ChangeColumnInCustomerTable < ActiveRecord::Migration
  def up
    rename_column :customers, :type_of_members, :membership_id
    change_column :customers, :membership_id, :integer
  end

  def down
    change_column :customers, :membership_id, :string
    rename_column :customers, :membership_id, :type_of_members
  end
end