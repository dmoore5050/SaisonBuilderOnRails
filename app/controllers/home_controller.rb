class HomeController < ApplicationController

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