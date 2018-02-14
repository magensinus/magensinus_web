# frozen_string_literal: true

class SchoolsController < ApplicationController
  # Index
  # -----
  # /schools
  def index
    @schools ||= Schools.first!
  end
end
