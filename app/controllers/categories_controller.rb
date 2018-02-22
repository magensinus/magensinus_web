# frozen_string_literal: true

class CategoriesController < ApplicationController
  # /categories
  def index
    @courses ||= Courses.first!
    @academy_categories ||= Academy::Category.where(published: true, magensinus: true).includes(:courses)
  end

  def show
    @courses ||= Courses.first!
    @academy_category = Academy::Category.find_by(slug: params[:id])
    @academy_courses = []
    @academy_category.courses.order(position: :asc).each do |object|
      @academy_courses << object
    end
    @academy_courses
  end
end
