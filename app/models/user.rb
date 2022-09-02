class User < ApplicationRecord
  belongs_to :dealer, optional: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
  # has_many :cars, through: :dealers
end
