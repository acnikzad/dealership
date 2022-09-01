class Request < ApplicationRecord
  belongs_to :user
  belongs_to :dealer
  belongs_to :car
end
