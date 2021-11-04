class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :happiness, :health, :hunger, :thirst, :boredom
  has_one :user
end
