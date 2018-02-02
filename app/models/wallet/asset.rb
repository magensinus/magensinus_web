# frozen_string_literal: true

module Wallet
  class Asset < ApplicationRecord
    # Table name
    self.table_name = "wallet_assets"

    # Concerns
    include Slug

    # Uploaders
    mount_uploader :document_box, Wallet::DocumentUploader

    # Relationships
    belongs_to :category, foreign_key: "wallet_category_id", inverse_of: false
  end
end
