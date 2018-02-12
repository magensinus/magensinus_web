# frozen_string_literal: true

class AboutController < ApplicationController
  # /about
  def index
    @about ||= About.first!
  end
end
