# frozen_string_literal: true

module Academy
  class Category < ApplicationRecord
    # Table name
    self.table_name = "academy_categories"

    # Concerns
    include Slug

    # Courses
    has_many :courses, dependent: :destroy, foreign_key: "academy_category_id", inverse_of: false
    accepts_nested_attributes_for :courses
    # Enrollments
    has_many :enrollments, dependent: :destroy, foreign_key: "academy_category_id", inverse_of: false
    accepts_nested_attributes_for :enrollments
  end
end
