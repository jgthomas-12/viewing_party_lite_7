class MovieService
  def movie_by_id(movie_id)
    get_url("/3/movie/#{movie_id}")
  end

  def all_movies(movies)
    get_url("3/movie")
  end

  def popular_movies
    get_url("movie?include_adult=false&include_video=false
    &language=en-US&page=1&sort_by=popularity.desc")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://api.themoviedb.org") do |faraday|
      faraday.headers["Authorization"] = ENV["MOVIE_API_KEY"]
    end
  end
end