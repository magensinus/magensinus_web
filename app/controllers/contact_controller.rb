# frozen_string_literal: true

class ContactController < ApplicationController
  # /contact
  def index
    @contact = Contact.first!
  end
end
