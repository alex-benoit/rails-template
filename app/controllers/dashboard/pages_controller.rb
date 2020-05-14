# frozen_string_literal: true

class Dashboard::PagesController < ApplicationController
  def home
    @title = 'Welcome'
  end
end
