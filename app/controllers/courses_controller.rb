# frozen_string_literal: true

class CoursesController < ApplicationController
  # /courses
  def index
    @courses = Courses.first!
  end
end
