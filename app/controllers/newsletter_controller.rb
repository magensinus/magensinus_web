# frozen_string_literal: true

class NewsletterController < ApplicationController
  # /newsletter
  def index
    @newsletter = Newsletter.first!
    @subscription = Subscription.new
  end

  # POST /subscriptions
  def create
    @newsletter = Newsletter.first!
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      flash[:success] = @newsletter.success
    else
      flash[:failure] = @newsletter.failure
    end
    redirect_to newsletter_index_path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def subscription_params
    params.require(:subscription).permit(
      :email
    )
  end
end
