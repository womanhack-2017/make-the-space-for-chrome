class ThinkController < ApplicationController
  def index
    @thinks = Think.all
    render json: @thinks
  end

  def show
    @think = Think.find_by(id: params[:id])
    render json: @think
  end
end
