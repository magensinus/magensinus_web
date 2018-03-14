# frozen_string_literal: true

module Academy
  class Course < ApplicationRecord
    # Table name
    # ----------
    # Academy courses
    self.table_name = "academy_courses"

    # Concerns
    # --------
    # Slug
    include Slug

    # Uploaders
    # ---------
    # Document
    mount_uploader :document_box, Academy::DocumentUploader
    mount_uploader :document_box_magensinus, Academy::DocumentUploader

    # Scoping
    scope :published, -> { where(published: true, magensinus: true).where("published_at <= ?", Time.zone.now).order(position: :asc) }

    # Relationships
    # -------------
    # Academy category
    belongs_to :category, optional: true, foreign_key: "academy_category_id", inverse_of: false
    # Academy enrollment courses
    has_many :enrollment_courses, dependent: :destroy, foreign_key: "academy_course_id", inverse_of: false
    # Academy enrollments
    has_many :enrollments, through: :enrollment_courses
  end
end
