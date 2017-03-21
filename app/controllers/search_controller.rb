include SearchHelper
class SearchController < ApplicationController
  def new

  end

  # POST /search
  def show
    @user = current_user
    @results = search_for(params[:search][:keyword], params[:search][:subject_id])
  end
end
