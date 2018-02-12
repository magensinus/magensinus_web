# frozen_string_literal: true

class Category < ApplicationRecord
  # Table name
  self.table_name = "magensinus_categories"

  # Concerns
  include Slug
end
