# frozen_string_literal: true

module ApplicationHelper
  # Magensinus settings
  def magensinus_settings
    @magensinus_settings = Settings::first!
  end

  # Endorsement badges
  def endorsement_badges
    @endorsement_badges = Endorsement::Badge.where(magensinus: true)
  end

  # Magensinus networks
  def magensinus_networks
    @magensinus_networks = Network.all
  end
end
