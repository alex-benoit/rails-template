# frozen_string_literal: true

class Api::V1::PagesController < ApiController
  def home
    render json: { time: Time.zone.now }
  end
end
