class Api::PokemonController < ApplicationController

  def types
    @types = Pokemon.types
    render json: @types
  end

  def index
    @pokemons = Pokemon.all
    render json: @pokemons
  end

  def show
    @pokemon = Pokemon.find(id: params[id])
    render json: @pokemon
  end

end