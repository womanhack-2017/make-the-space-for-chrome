class ConnectController < ApplicationController
  def index
    @connects = Connect.all
    render json: @connects
  end

  def show
    @connect = Connect.find_by(id: params[:id])
    render json: @connect
  end
end
