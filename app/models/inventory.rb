class Inventory < ActiveRecord::Base
  attr_accessible :name, :per_price, :quantity, :total_cost
end
