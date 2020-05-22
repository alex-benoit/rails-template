# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/api/v1' do
  it 'shows welcome message' do
    get '/api/v1'

    expect(response).to have_http_status(:ok)
    # expect(body['message']).to eq('Hello world')
  end
end
