# frozen_string_literal: true

class HomeController < ApplicationController
  # Root
  def index
    @home = Home.first!
  end
end
