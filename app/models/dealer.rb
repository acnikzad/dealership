class Dealer < ApplicationRecord
  has_many :cars
  has_many :requests
  belongs_to :user
end
