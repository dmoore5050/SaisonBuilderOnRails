class ApplicationController < ActionController::Base

  add_crumb 'Homepage', '/'

  protect_from_forgery
end