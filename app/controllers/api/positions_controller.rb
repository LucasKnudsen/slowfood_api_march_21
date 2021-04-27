class Api::PositionsController < ApplicationController
  def index
    positions = Position.all
    render json: { positions: positions.as_json }
  end
end
