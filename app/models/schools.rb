# frozen_string_literal: true

class Schools < ApplicationRecord
  # Table name
  self.table_name = "magensinus_schools"

  # Concerns
  include Slug
end
