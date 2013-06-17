class HomeController < ApplicationController

  def build
    add_crumb 'Build', '/'
  end

  def learn
    add_crumb 'Learn', '/'
  end

  def techniques
    add_crumb 'Learn', '/home/learn'
    add_crumb 'Techniques', '/'
  end

  def style
    add_crumb 'Learn', '/home/learn'
    add_crumb 'Style', '/'
  end

end