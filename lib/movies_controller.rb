require_relative "./movie.rb"
require "pstore"

class MoviesController
  def all
    
  end

  def show
    
  end

  def add(title)
    movie = Search.query(title)
    puts "adding..."
  end

  def remove

  end

  def edit

  end
end
