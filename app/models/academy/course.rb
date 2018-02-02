# frozen_string_literal: true

module Academy
  class Course < ApplicationRecord
    # Table name
    self.table_name = "academy_courses"

    # Concerns
    include Slug

    # Scoping
    scope :draft, -> { where(draft: true) }
    scope :scheduled, -> { where.not(draft: true).where("published_at > ?", Time.zone.now) }
    scope :published, -> { where.not(draft: true).where("published_at <= ?", Time.zone.now) }
  end
end
