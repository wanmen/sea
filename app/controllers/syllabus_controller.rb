class SyllabusController < ApplicationController
  def index
    @course = Course.find(params[:course_id])
    @lessons = @course.lessons.page(params[:page]).per(20)
    respond_to do |format|
      format.html { render "courses/_outline", layout: nil }
      format.json { head :no_content }
    end
  end
end
