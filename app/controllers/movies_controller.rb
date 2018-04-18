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
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to  movies_path
    else
      render :new
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    redirect_to movies_path
  end
  def show
    @movie = Movie.find(params[:id])
    render :show
  end
  private
  def movie_params
    params.require(:movie).permit(:name, :description, :rating)
  end
end
