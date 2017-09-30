class ApplyController < ApplicationController
  def index
    @applies = Apply.all
    render json: @applies
  end

  def show
    @apply = Apply.find_by(id: params[:id])
    render json: @apply
  end
end
