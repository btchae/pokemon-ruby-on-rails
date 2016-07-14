class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :startgame, :mudkip, :treecko, :torchic, :secretbase, :littleroot, :r101, :r101_capture, :oldale_town, :r103, :r102, :petalburg_city]
  def index
    @users = User.all.to_a
    puts @users
  end
  def show
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, success: "Successfully made"
    else
      puts "error"
      redirect_to '/users/new', notice: "Invalid form input. No input fields can be left blank"
    end
  end
  def edit
  end
  def update
  end
  def destroy
    @user.destroy
    redirect_to '/users'
  end
  #startgame is where one starts his or her journey as a pokemon trainer!(choose your starter page)
  def startgame
    @user.money = 3000
    @user.save
    puts 'testing if this works'
    uri = "http://pokeapi.co/api/v2/pokemon/mudkip"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    mudkipz = response
    @mudkip = mudkipz
    uri = "http://pokeapi.co/api/v2/pokemon/torchic"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    torchicz = response
    @torchic = torchicz
    uri = "http://pokeapi.co/api/v2/pokemon/treecko"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    treeckoz = response
    @treecko = treeckoz
  end
  def mudkip
    puts '-------------'
    puts @user.name
    puts 'mudkip'
    puts '-------------'
    uri = "http://pokeapi.co/api/v2/pokemon/mudkip"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    @user.pokemons.delete_all
    @user.pokemons.create(name: "Mudkip", wild: false, level: 5, species: "mudkip", description: "The fin on MUDKIP’s head acts as highly sensitive radar. Using this fin to sense movements of water and air, this POKéMON can determine what is taking place around it without using its eyes.", types: response["types"][0]["type"]["name"], sex: "m", moves: ["Growl", "Tackle"], img_url: response['sprites']['front_default'])
    @user["money"] = @user["money"] * 2
    @user.save
    puts @user.money
  end
  def treecko
    puts @user.name
    puts 'treecko'
    puts '-------------'
    uri = "http://pokeapi.co/api/v2/pokemon/treecko"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    @user.pokemons.delete_all
    @user.pokemons.create(name: "Treecko", wild: false, level: 5, species: "treecko", description: "TREECKO has small hooks on the bottom of its feet that enable it to scale vertical walls. This POKéMON attacks by slamming foes with its thick tail.", types: response["types"][0]["type"]["name"], sex: "m", moves: ["Leer","Pound"], img_url: response['sprites']['front_default'])
  end
  def torchic
    puts @user.name
    puts 'torchic'
    puts '-------------'
    uri = "http://pokeapi.co/api/v2/pokemon/torchic"
    response = HTTParty.get(uri)
    puts '-----------------------------------'
    puts response["sprites"]["front_default"]
    puts '-----------------------------------'
    @user.pokemons.delete_all
    @user.pokemons.create(name: "Torchic", wild: false, level: 5, species: "torchic", description: "TORCHIC sticks with its TRAINER, following behind with unsteady steps. This POKéMON breathes fire of over 1,800 degrees F, including fireballs that leave the foe scorched black.", types: response["types"][0]["type"]["name"], sex: "m", moves: ["Growl", "Scratch"], img_url: response['sprites']['front_default'])
    @user["money"] = @user["money"]/2
    @user.save
    puts @user.money
  end
  def secretbase
  end
  def littleroot
    @user.location = "littleroot"
    @user.save
  end
  def r101
    @user.location = "r101"
    @user.save
  end
  def r101_capture
    rannum = rand(1..100)
    puts rannum
    if rannum.between?(1,45)
      encounter = "zigzagoon"
    elsif rannum.between?(46,90)
      encounter = "wurmple"
    elsif rannum.between?(91,100)
      encounter = "poochyana"
    end
    puts encounter
    uri = "http://pokeapi.co/api/v2/pokemon/"+encounter
    response = HTTParty.get(uri)
    puts response["name"]
    @user.pokemons.create(name: response["name"], wild: false, level: 2, species: response["species"], types: response["types"][0]["type"]["name"], sex: 'm')
    @first_random = response
  end
  def oldale_town
    @user.location = "oldale_town"
    @user.save
  end
  def r103
    @user.location = "r103"
    @user.save
  end
  def r102
    @user.location = "r102"
    @user.save
  end
  def petalburg_city
    @user.location = "petalburg_city"
    @user.save
  end
  def r104
  end
  def rustboro_city
  end
  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :money)
  end
end