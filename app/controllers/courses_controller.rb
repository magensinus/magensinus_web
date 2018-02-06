# frozen_string_literal: true

class CoursesController < ApplicationController
  # /courses
  def index
    @courses = Courses.first!
    @academy_courses = Academy::Course.published
  end

  # /courses/tyyt56hhhj
  def show
    @academy_course = Academy::Course.find_by(slug: params[:id])
  end
end
