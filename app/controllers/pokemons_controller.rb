class PokemonsController < ApplicationController
  before_action :set_pokemon, only: [:show, :edit, :update, :destroy]
  def index
    @pokemons = Pokemon.all
  end
  def show
  end
  def new
  end
  def create
  end
  def edit
  end
  def update
    if @pokemon.update(pokemon_params)
      redirect_to @pokemon
    end
  end
  def destroy
    @pokemon.destroy
    redirect_to '/users/'+@pokemon.user.id
  end
  def starter_pokemon
    uri = "http://pokeapi.co/api/v2/pokemon/mudkip"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["name"]
    puts '-----------------------------------'
  end
  private
  def set_pokemon
    @pokemon = Pokemon.find(params[:id])
  end
  def pokemon_params
    params.require(:pokemon).permit(:name, :nickname, :wild, :species, :type)
  end
end