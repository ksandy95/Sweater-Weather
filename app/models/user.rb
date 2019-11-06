class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true
  validates_presence_of :api_key
  has_secure_password

end
