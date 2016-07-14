class User
  include Mongoid::Document
  field :name
  field :money, default: 3000
  field :location, default: "littleroot"
  has_many :pokemons
end