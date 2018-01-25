# frozen_string_literal: true

class About < ApplicationRecord
  # Table name
  self.table_name = "magensinus_about"

  # Concerns
  include Slug
end
