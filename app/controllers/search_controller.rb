class SearchController < ApplicationController
  def index
    sf = SearchFacade.new
    @populace = sf.nation_index(params[:nation])
    @nation = params[:nation].gsub("+", " ").titleize
  end
end