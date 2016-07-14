class Pokemon
  include Mongoid::Document
  field :name
  field :level
  field :nickname
  field :wild
  field :species
  field :description
  field :types
  field :sex
  field :moves
  field :img_url
  belongs_to :user
end