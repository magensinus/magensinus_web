# frozen_string_literal: true

class CategoriesController < ApplicationController
  # /categories
  def index
    @courses ||= Courses.first!
    @categories ||= Academy::Category.where(published: true, magensinus: true)
  end
end
