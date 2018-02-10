# frozen_string_literal: true

module ApplicationHelper
  # Endorsement badges
  def endorsement_badges
    @endorsement_badges = Endorsement::Badge.where(magensinus: true)
  end

  # Magensinus networks
  def magensinus_networks
    @magensinus_networks = Network.all
  end
end
