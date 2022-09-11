class Dealer < ApplicationRecord
  has_many :cars
  has_many :requests
  belongs_to :user

  # attributes :count

  def count
    # return Dealer.car.count
    # return false
  end

end
