include SearchHelper
class SearchController < ApplicationController
  def new
    @user = current_user
    @results = search_for(params[:keyword], params[:subject])
    @results ||= Array.new

  end
end
