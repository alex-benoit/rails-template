# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Dashboard Home' do
  it 'shows the current time' do
    visit '/dashboard'
    expect(page).to have_text('Welcome')
  end
end
