class User < ApplicationRecord
  belongs_to :dealer
  has_many :cars, through: :dealers
end
