class StaticPagesController < ApplicationController

  # GET /home
  def home
    @enrollments = Enrollment.where(user_id: current_user.id) if logged_in?
  end


end
