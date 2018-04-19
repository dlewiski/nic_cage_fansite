class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_index_path
    else
      render :new
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to news_path
  end

  def show
    @news = News.find(params[:id])
    render :show
  end

  private
  def news_params
    params.require(:news).permit(:title)
  end

end
