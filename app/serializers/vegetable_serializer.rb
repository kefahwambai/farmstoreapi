class VegetableSerializer < ActiveModel::Serializer
  attributes :name, :price, :nutritional_benefit, :image_url
end
