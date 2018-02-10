# frozen_string_literal: true

class Network < ApplicationRecord
  # Table name
  self.table_name = "magensinus_networks"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :thumb_box, Magensinus::ThumbUploader
end
