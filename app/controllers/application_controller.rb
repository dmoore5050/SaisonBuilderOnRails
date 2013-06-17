class ApplicationController < ActionController::Base

  add_crumb 'Home', '/'

  protect_from_forgery
end