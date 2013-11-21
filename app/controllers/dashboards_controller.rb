class DashboardsController < ApplicationController
  respond_to :html,:js
  def index
    @customers_year = Customer.by_year(Time.now.year)
    @customers_month = Customer.by_month(Time.now.month)
    @customers_day = Customer.by_day(Time.now.day)    
  end
end
