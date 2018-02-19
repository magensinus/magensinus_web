# frozen_string_literal: true

class QualityController < ApplicationController
  # /quality
  def index
    @quality            ||= Quality.first!
    @wallet_categories  ||= Wallet::Category.where(magensinus: true)
  end
end
