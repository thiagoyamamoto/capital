class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  protected

  def layout_by_resource
  	if devise_controller? && resource_name == :admin
  		return "backoffice_devise"
  	else
  		return "site"
  	end
  end
  
end
