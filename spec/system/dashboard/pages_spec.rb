# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/dashboard' do
  it 'welcomes the user' do
    visit '/dashboard'
    expect(page).to have_text('Welcome')
  end

  it 'says hi to the user', js: true do
    visit '/dashboard'
    expect(page).to have_text('Hi you')
  end
end
