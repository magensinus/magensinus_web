# frozen_string_literal: true

module ApplicationHelper
  # Fetch settings
  def fetch_settings
    @fetch_settings = Settings.first!
  end

  # Fetch networks
  def fetch_networks
    @fetch_networks = Network.all
  end

  # Fetch badges
  def fetch_badges
    @fetch_badges ||= Endorsement::Badge.where(magensinus: true)
  end

  def fetch_categories
    @fetch_categories ||= Academy::Category.where(magensinus: true, published: true)
  end
end
