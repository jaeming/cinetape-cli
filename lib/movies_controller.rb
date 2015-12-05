require_relative "./movie.rb"
require_relative "./search.rb"
require "titleize"
require "pstore"

class MoviesController

  def all
    
  end

  def show
    
  end

  def self.add(title)
    store = PStore.new("data.pstore")
    store.transaction do
      store[:movies] ||= []
      store[:movies] << {title: title.titleize}
      store.commit
    end
    #meta_data = Search.request(title)[0]['description']
    puts "added #{store.transaction { store[:movies].last }}"
  end

  def remove

  end

  def edit

  end
end
