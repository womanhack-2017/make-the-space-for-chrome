class ApplyController < ApplicationController
  def index
    # @applies = Apply.all
    # render json: @applies

    @apply = Apply.all.sample
    render json: @apply

  end

  def show
    @apply = Apply.find_by(id: params[:id])
    render json: @apply
  end
end
