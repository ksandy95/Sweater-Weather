# frozen_string_literal: true

class GiphySerializer
  include FastJsonapi::ObjectSerializer

  attributes :images

  attribute :copyright do |_object|
    '2019'
  end
end
