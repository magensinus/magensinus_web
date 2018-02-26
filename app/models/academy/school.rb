# frozen_string_literal: true

module Academy
  class School < ApplicationRecord
    # Table name
    # ----------
    # Academy Schools
    self.table_name = "academy_schools"

    # Concerns
    # --------
    # Slug
    include Slug

    # Uploaders
    # ---------
    # Thumb
    mount_uploader :thumb_box, Academy::ThumbUploader
    # Cover
    mount_uploader :cover_box, Academy::CoverUploader
  end
end
