# frozen_string_literal: true

module Academy
  class Course < ApplicationRecord
    # Table name
    self.table_name = "academy_courses"

    # Concerns
    include Slug

    # Uploaders
    # ---------
    # Document
    mount_uploader :document_box, Academy::DocumentUploader

    # Scoping
    scope :published, -> { where(published: true, magensinus: true).where("published_at <= ?", Time.zone.now).order(position: :asc) }
  end
end