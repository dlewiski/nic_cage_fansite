class WelcomeController < ApplicationController
  def index
    @movies = Movie.all
    @photos = Photo.all
    @news = News.all
    render :index
  end
end
