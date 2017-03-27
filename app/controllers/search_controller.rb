include SearchHelper
class SearchController < ApplicationController
  def new
    @user = current_user
    @results = search_for(params[:keyword], params[:subject])
    @results ||= Array.new

  end

  # POST /search
  def show
    @user = current_user
    #byebug
    @results = search_for(params[:keyword], params[:subject])
    #byebug
  end
end
