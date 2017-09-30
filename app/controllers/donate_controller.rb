class DonateController < ApplicationController
  def index
    # @donates = Donate.all
    # render json: @donates

    @donate = Donate.all.sample
    render json: @donate
  end

  def show
    @donate = Donate.find_by(id: params[:id])
    render json: @donate
  end
end
