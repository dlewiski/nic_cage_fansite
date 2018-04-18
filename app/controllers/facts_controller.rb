class FactsController < ApplicationController
  def index
    @facts = Fact.all
    render :index
  end
end
