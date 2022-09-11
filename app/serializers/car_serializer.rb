class CarSerializer < ActiveModel::Serializer
  attributes :id, :year, :make, :model, :color, :drivetrain, :car_type, :price, :mileage, :dealer_id, :dealer
end