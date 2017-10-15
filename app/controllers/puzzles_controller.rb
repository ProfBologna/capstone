class PuzzlesController < ApplicationController

  def new
    @puzzle = Puzzle.new
  end
  
  def create
    puzzle = Puzzle.new(
                        room_id: params[:room_id],
                        promt: params[:promtp],
                        question: params[:question],
                        answer: params[:answer],
                        hint: params[:hint]
                        )

    puzzle.save
  end
  

  def check
    puzzle = Puzzle.find_by(prompt: params[:user_prompt].downcase, room_id: params[:room_id])
    if puzzle
      redirect_to "/games/#{ game.id }/puzzles/#{ puzzle.id }"
    else
      redirect_to "/games/#{ games.id}/rooms/#{params[:room_id]}"
    end
  end

  def show
    @puzzle = Puzzle.find(params[:id])
  end

  def answer
    @game = Game.find(params[:game_id])
    @puzzle = Puzzle.find(params[:id])
    @room = Room.find(@puzzle.room_id)

    if @puzzle.answer == params[:user_prompt]
      solve_marker = SolveMarker.new(
                                    user_id: current_user.id,
                                    puzzle_id: @puzzle.id,
                                    room_id: @puzzle.room_id,
                                    game_id: @game.id
                                    )
      solve_marker.save
      p solve_marker.errors.full_messages
      check_solve_markers
    else
      @hint = @puzzle.hint
      render :show
    end
  end

  private

  def check_solve_markers
    total_room_puzzles = @room.puzzles.all.count
    total_user_solved_markers_for_room = current_user.solve_markers.where(room_id: @room.id, game: @game.id).count

    if total_room_puzzles == total_user_solved_markers_for_room
      @game.update(room_id: @room.next.id)
      redirect_to "/games/#{@game.id}/rooms/#{@room.next.id}"
    else
      redirect_to "/games/#{@game.id}/rooms/#{@room.id}"
    end
  end

end
