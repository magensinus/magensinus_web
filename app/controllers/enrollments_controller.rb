# frozen_string_literal: true

class EnrollmentsController < ApplicationController
  # Callbacks
  # ---------
  # Academy category
  before_action :academy_category
  # Academy courses
  before_action :academy_courses

  # Index
  # -----
  def index
    @academy_enrollment = @academy_category.enrollments.new
  end

  # Create
  # ------
  def create
    @academy_enrollment = @academy_category.enrollments.new(academy_enrollment_params)
    if @academy_enrollment.save
      send_enrollment_email
      flash[:success] = @settings.enrollment_success
      redirect_to category_enrollments_path(@academy_category)
    else
      flash.now[:failure] = @settings.enrollment_failure
      render :index
    end
  end

  private

  # Academy category
  def academy_category
    @academy_category = Academy::Category.find_by(slug: params[:category_id])
  end

  # Academy courses
  def academy_courses
    @academy_courses = @academy_category.courses.order(position: :asc)
  end

  # Send enrollment email
  def send_enrollment_email
    @academy_enrollment = object
    @courses = []
    @academy_enrollment_courses = Academy::EnrollmentCourse.where(academy_enrollment_id: object.id).includes(:course)
    @academy_enrollment_courses.each do |object|
      @courses << object.course.as_json(only: [:title])
    end

    client = Postmark::ApiClient.new(ENV["POSTMARK_TOKEN"])
    client.deliver_with_template(
      from: ENV["POSTMARK_NOTIFICATIONS_EMAIL"],
      to: @academy_category.email,
      template_id: "4858883",
      template_model: {
        name:               object.name,
        surname:            object.surname,
        dob:                object.dob,
        email:              object.email,
        phone:              object.phone,
        address_one:        object.address_one,
        address_two:        object.address_two,
        postcode:           object.postcode,
        city:               object.city,
        country:            object.country,
        secondary_name:     object.secondary_name,
        secondary_surname:  object.secondary_surname,
        secondary_email:    object.secondary_email,
        secondary_phone:    object.secondary_phone,
        courses:            @courses
      },
      tag: "enrollment"
    )
  end

  # Whitelist parameters
  def academy_enrollment_params
    params.require(:academy_enrollment).permit(
      :academy_category_id,
      :name,
      :surname,
      :dob,
      :email,
      :phone,
      :address_one,
      :address_two,
      :postcode,
      :city,
      :country,
      :secondary_name,
      :secondary_surname,
      :secondary_email,
      :secondary_phone,
      :accept_terms,
      course_ids: []
    )
  end
end
