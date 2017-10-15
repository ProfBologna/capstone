class RoomsController < ApplicationController

  def index
    @rooms = Room.all
  end

  def show
    @game = Game.find(params[:game_id])
    @room = Room.find(params[:id])
  end

end
