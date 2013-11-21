class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
  
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "landing"
    elsif devise_controller? && resource_name == :user && action_name == 'new'
      "landing"
    elsif devise_controller? && resource_name == :user && action_name == 'edit'
      "landing"
    elsif controller_name =~ /home/
      "landing"
    else
      "application"
    end
  end
end
