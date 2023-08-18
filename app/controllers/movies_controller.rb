class MoviesController < ApplicationController
  def index
    # @users = User.all #find specific user?
    # @user = User.find(params[:user_id])
    # if params[:search].present?
    #   @facade = SearchByKeywordFacade.new(params[:search])
    # else
    #   @facade = PopularFacade.new
    # end


    @facade = MoviesFacade.new(params)

  end

  def show
    # @facade = SearchFacade.new(params[:movie_id])
    # @user = User.find(params[:user_id])

    @facade = MoviesFacade.new(params)
    @movie = @facade.movie_info(@facade.movie_id)

  end

  def create

  end
end