class EvolveController < ApplicationController
  def index
    # @evolves = Evolve.all
    # render json: @evolves

    @evolve = Evolve.all.sample
    render json: @evolve
  end

  def show
    @evolve = Evolve.find_by(id: params[:id])
    render json: @evolve
  end
end
