class SearchController < ApplicationController
  def index
    sf = SearchFacade.new
    require 'pry'; binding.pry
    @populace = sf.nation_index(params[:nation])
  end
end