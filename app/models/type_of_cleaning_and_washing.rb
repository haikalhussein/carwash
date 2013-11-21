class TypeOfCleaningAndWashing < ActiveRecord::Base
  attr_accessible :mem_price, :name, :price, :car_id
  
  has_many :customers
  belongs_to :car, :class_name => "Car", :foreign_key => "car_id"
end
