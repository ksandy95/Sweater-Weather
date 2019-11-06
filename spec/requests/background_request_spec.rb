# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Background Image API' do
  describe 'returns backgrounds correctly' do
    it 'returns a JSON object with the image url' do
      get '/api/v1/backgrounds?location=denver,co'

      expect(response).to be_successful

      result = JSON.parse(response.body, symbolize_names: true)
      expect(result[:data][:id]).to be_a(String)
      expect(result[:data][:attributes][:url]).to be_a(String)
    end
  end
end
