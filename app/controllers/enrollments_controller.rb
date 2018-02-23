# frozen_string_literal: true

class EnrollmentsController < ApplicationController
  # Callbacks
  # ---------
  # Academy category
  before_action :academy_category

  # Index
  # -----
  def index
    @academy_courses = @academy_category.courses.order(position: :asc)
    @academy_enrollment = @academy_category.enrollments.new
  end

  # Create
  # ------
  def create
    @academy_courses = @academy_category.courses.order(position: :asc)
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

  # Send enrollment email
  def send_enrollment_email
    @courses = []
    @academy_enrollment_courses = Academy::EnrollmentCourse.where(academy_enrollment_id: @academy_enrollment.id).includes(:course)
    @academy_enrollment_courses.each do |object|
      @courses << object.course.as_json(only: [:title])
    end
    client = Postmark::ApiClient.new(ENV["POSTMARK_TOKEN"])
    client.deliver_with_template(
      from: ENV["POSTMARK_NOTIFICATIONS_EMAIL"],
      to: @academy_category.email,
      template_id: "4858883",
      template_model: {
        name:               @academy_enrollment.name,
        surname:            @academy_enrollment.surname,
        dob:                @academy_enrollment.dob,
        email:              @academy_enrollment.email,
        phone:              @academy_enrollment.phone,
        address_one:        @academy_enrollment.address_one,
        address_two:        @academy_enrollment.address_two,
        postcode:           @academy_enrollment.postcode,
        city:               @academy_enrollment.city,
        country:            @academy_enrollment.country,
        secondary_name:     @academy_enrollment.secondary_name,
        secondary_surname:  @academy_enrollment.secondary_surname,
        secondary_email:    @academy_enrollment.secondary_email,
        secondary_phone:    @academy_enrollment.secondary_phone,
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
