class Car < ActiveRecord::Base
  attr_accessible :name
  
  has_many :customers
  has_many :type_of_cleaning_and_washings
end
