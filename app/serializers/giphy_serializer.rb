class GiphySerializer
  include FastJsonapi::ObjectSerializer

  attributes :images

  attribute :copyright do |object|
    "2019"
  end

end
