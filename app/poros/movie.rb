  class Movie
  attr_reader :title,
              :runtime,
              :vote_average,
              :popularity,
              :id,
              :cast,
              :overview,
              :genres,
              :name,
              :image

  def initialize(attributes)
    @title = attributes[:title]
    @runtime = attributes[:runtime]
    @vote_average = attributes[:vote_average]
    @popularity = attributes[:popularity]
    @id = attributes[:id]
    @cast = attributes[:cast]
    @overview = attributes[:overview]
    @genres = attributes[:genres]
    # @genres = genres_method(attributes[:genres])
    @name = attributes[:name]
    @image = attributes[:poster_path]
  end

  # def genres_method(atts)
  #   require 'pry'; binding.pry
  #   genres = {
  #     genre_ids: atts[:genre_ids]
  #   }
  #   # require 'pry'; binding.pry
  # end
end
