# frozen_string_literal: true

class Api::V1::PagesController < ApiController
  def home
    render json: presenter.render
  end

  private

  def presenter
    @presenter ||= V1::PagesPresenter.new
  end
end
