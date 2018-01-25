# frozen_string_literal: true

class QualityController < ApplicationController
  # /quality
  def index
    @quality = Quality.first!
  end
end
