class MoviesFacade
  attr_reader :user_id,
              :movie_id

  def initialize(params)
    @user_id = params[:user_id]
    @search = params[:search]
    @movie_id = params[:movie_id]
  end

  def movies
    if @search
      service.search_movie_by_keyword(@search)[:results].map do |data|
        Movie.new(data)
      end
    else
      service.popular_movies[:results].map do |data|
        Movie.new(data)
      end
    end
  end

  def movie_info(id)
    movie = service.movie_by_id(id)
    Movie.new(movie)
  end

  def service
    MovieService.new
  end
end