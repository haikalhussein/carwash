class Membership < ActiveRecord::Base
  attr_accessible :name, :price
  has_many :customers
end
