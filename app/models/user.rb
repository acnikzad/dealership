class User < ApplicationRecord
  belongs_to :dealer, optional: true
  # has_many :cars, through: :dealers
end
