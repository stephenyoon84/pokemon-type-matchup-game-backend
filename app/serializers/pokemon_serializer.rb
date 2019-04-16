class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :type1, :type2, :image_url
end
