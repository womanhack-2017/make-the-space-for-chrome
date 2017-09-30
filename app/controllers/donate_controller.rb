class DonateController < ApplicationController
  def index
    @donates = Donate.all
    render json: @donates
  end

  def show
    @donate = Donate.find_by(id: params[:id])
    render json: @donate
  end
end
