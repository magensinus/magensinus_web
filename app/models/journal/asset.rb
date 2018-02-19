# frozen_string_literal: true

module Journal
  class Asset < ApplicationRecord
    # Table name
    self.table_name = "journal_assets"

    # Concerns
    include Slug

    # Relationships
    belongs_to :article, foreign_key: "journal_article_id", inverse_of: false

    # Uploaders
    mount_uploader :image_box, Journal::ImageUploader
  end
end
