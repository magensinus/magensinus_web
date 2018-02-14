# frozen_string_literal: true

class AboutController < ApplicationController
  # Index
  # -----
  # /about
  def index
    @about ||= About.first!
  end
end
