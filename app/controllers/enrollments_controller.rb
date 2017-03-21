class EnrollmentsController < ApplicationController
  def create
      Enrollment.create(user_id: params[:user_id], course_id: params[:course_id])
  end

  def show

  end

  def destroy
    e = Enrollment.where(user_id: params[:user_id], course_id: params[:course_id])
    e.destroy_all
  end
end
