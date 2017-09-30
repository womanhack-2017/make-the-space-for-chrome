class EvolveController < ApplicationController
  def index
    @evolves = Evolve.all
    render json: @evolves
  end

  def show
    @evolve = Evolve.find_by(id: params[:id])
    render json: @evolve
  end
end
