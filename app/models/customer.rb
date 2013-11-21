class Customer < ActiveRecord::Base
  attr_accessible :is_member, :num_plate, :type_of_car_id, :type_of_cleaning_and_washing_id, :price, :name, :email, :address, :mobile_number, :membership_id
  
  belongs_to :car, :class_name => "Car", :foreign_key => "type_of_car_id"
  belongs_to :type_of_cleaning_and_washing, :class_name => "TypeOfCleaningAndWashing", :foreign_key => "type_of_cleaning_and_washing_id"
  belongs_to :membership, :class_name => "Membership", :foreign_key => "membership_id"

  def self.by_year(year)
      where('extract(year from created_at) = ?', year)
  end
  
  def self.by_month(month)
      where('extract(month from created_at) = ?', month)
  end
  
  def self.by_day(day)
      where('extract(day from created_at) = ?', day)
  end
end
