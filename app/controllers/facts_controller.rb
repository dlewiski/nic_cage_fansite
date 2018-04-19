class FactsController < ApplicationController
  def index
    @facts = Fact.all
    render :index
  end
  def new
    @fact = Fact.new
  end
  def create
    @fact = Fact.new(fact_params)
    if @fact.save
      redirect_to  facts_path
    else
      render :new
    end
  end

  def destroy
    @fact = Fact.find(params[:id])
    @fact.destroy
    redirect_to facts_path
  end
  def show
    @fact = Fact.find(params[:id])
    render :show
  end
  private
  def fact_params
    params.require(:fact).permit(:title, :rating)
  end
  end
