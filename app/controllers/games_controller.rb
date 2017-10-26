class GamesController < ApplicationController

  def new
    @game = Game.new
  end

  def create
    game = Game.new(
                    user_id: params[:user_id],
                    room_id: Room.first.id
                    )
    game.save
    user = User.find(current_user.id)
    user.update_attributes(current_game: game.id)
    flash[:succes] = "You have successfully started a new game."
    redirect_to  "/games/#{game.id}/rooms/2" #need to change this so it reflects 1
  end

end
