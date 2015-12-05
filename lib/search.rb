class Search
  require 'ruby-tmdb3'
  require 'dotenv'
  Dotenv.load
  Tmdb.api_key = ENV['MOVIE_DB']
  Tmdb.default_language = "en"

  def self.request(title)
    movie = TmdbMovie.find(title: title, :limit => 5)
    movie.map { |m| {'title' => m.title, 'description' => m.overview} }
  end

end
