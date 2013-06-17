class HomeController < ApplicationController

  def build
    add_crumb 'Build', '/'
  end

end