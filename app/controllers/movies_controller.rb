class MoviesController < ApplicationController
  def index
    @users = User.all #find specific user?
    @user = User.find(params[:user_id])
  end

  def show
    @facade = SearchFacade.new(params[:id])
  end
end