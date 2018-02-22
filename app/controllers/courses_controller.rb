# frozen_string_literal: true

class CoursesController < ApplicationController
  # /courses/tyyt56hhhj
  def show
    @academy_course = Academy::Course.find_by(slug: params[:id])
    @academy_category = @academy_course.category.slug
  end
end
