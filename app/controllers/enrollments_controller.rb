class EnrollmentsController < ApplicationController
  def create
      Enrollment.create(user_id: params[:user_id], course_id: params[:course_id])
  end

  def show

  end
end
