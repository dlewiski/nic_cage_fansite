class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @photos = Photo.all
    @news = News.all
    render :index
  end

  def new
    @movie = Movie.new
  end

  def show

    render :show
  end

end
