# frozen_string_literal: true

class SchoolsController < ApplicationController
  # Index
  # -----
  # /schools
  def index
    @schools ||= Schools.first!
    @academy_schools ||= Academy::School.where(published: true, magensinus: true)
  end
end
