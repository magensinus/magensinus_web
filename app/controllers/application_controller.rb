# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Callbacks
  # ---------
  # Settings
  before_action :settings

  # Settings
  def settings
    @settings ||= Settings.first!
  end
end
