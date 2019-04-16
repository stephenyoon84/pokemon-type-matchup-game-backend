class PokemonsController < ApplicationController
  def index
    render json: Pokemon.all
  end

  def show
    render json: Pokemon.find(params[:id])
  end
end
