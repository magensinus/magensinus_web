# frozen_string_literal: true

class Settings < ApplicationRecord
  # Table name
  self.table_name = "magensinus_settings"

  # Concerns
  include Slug
end
