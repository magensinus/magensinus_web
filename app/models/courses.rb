# frozen_string_literal: true

class Courses < ApplicationRecord
  # Table name
  self.table_name = "magensinus_courses"

  # Concerns
  include Slug
end
