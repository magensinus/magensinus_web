# frozen_string_literal: true

module Academy
  class Enrollment < ApplicationRecord
    # Table name
    # ----------
    # Academy enrollments
    self.table_name = "academy_enrollments"

    # Concerns
    # --------
    # Slug
    include Slug

    # Relationships
    # -------------
    # Category
    belongs_to :category, optional: true, foreign_key: "academy_category_id", inverse_of: false
    # Academy enrollment courses
    has_many :enrollment_courses, dependent: :destroy, foreign_key: "academy_enrollment_id", inverse_of: false
    # Academy courses
    has_many :courses, through: :enrollment_courses

    # Validations
    # -----------
    # Name
    validates :name, presence: true
    # Surname
    validates :surname, presence: true
    # Dob
    validates :dob, presence: true
    # Email
    validates :email, presence: true
    # Phone
    validates :phone, presence: true
    # Courses
    validates :courses, presence: true
  end
end
