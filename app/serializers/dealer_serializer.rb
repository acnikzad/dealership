class DealerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :user_id
end
