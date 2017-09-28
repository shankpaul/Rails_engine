class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def company_modules
  	Company.find(1).package.modules
  end
end
