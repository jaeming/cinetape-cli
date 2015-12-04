require_relative "./movies_controller.rb"

class Movie
  attr_accessor :title, :description, :year, :rating, :cover, :language

  def initialize
    self.title = title
    self.description = description
    self.year = year
    self.rating = rating
    self.cover = cover
    self.language = language
  end
end
