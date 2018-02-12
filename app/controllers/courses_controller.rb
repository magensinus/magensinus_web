# frozen_string_literal: true

class CoursesController < ApplicationController
  # /courses/tyyt56hhhj
  def show
    @academy_category = Academy::Category.find_by(slug: params[:category_id])
    @academy_course = Academy::Course.find_by(slug: params[:id])
  end
end
