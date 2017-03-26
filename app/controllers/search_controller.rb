include SearchHelper
class SearchController < ApplicationController
  def new

  end

  # POST /search
  def show
    @user = current_user
    #byebug
    @results = search_for(params[:search][:keyword], params[:search][:subject])
    #byebug
  end
end
