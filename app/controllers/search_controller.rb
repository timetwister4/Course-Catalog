class SearchController < ApplicationController
  def new

  end

  # POST /search
  def show
    @results = search_for(params[:keyword], params[:subject])

  end
end
