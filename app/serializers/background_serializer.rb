# frozen_string_literal: true

class BackgroundSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :url
end
