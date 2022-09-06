class User < ApplicationRecord
  belongs_to :request, optional: true
  has_one :dealer
  has_secure_password
  validates :email, presence: true, uniqueness: true

end
