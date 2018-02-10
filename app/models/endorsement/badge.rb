# frozen_string_literal: true

module Endorsement
  class Badge < ApplicationRecord
    # Table name
    self.table_name = "endorsement_badges"

    # Concerns
    include Slug

    # Uploaders
    mount_uploader :thumb_box, Endorsement::ThumbUploader
  end
end
