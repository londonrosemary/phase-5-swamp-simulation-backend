class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :happiness, :health, :hunger, :thirst, :boredom, :image_url
  has_one :user
end
