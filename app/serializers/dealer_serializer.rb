class DealerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :user, :cars
end
