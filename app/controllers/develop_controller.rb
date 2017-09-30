class DevelopController < ApplicationController
  def index
    @develops = Develop.all
    render json: @develops
  end

  def show
    @develop = Develop.find_by(id: params[:id])
    render json: @develop
  end
end
