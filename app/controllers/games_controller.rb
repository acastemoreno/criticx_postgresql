class GamesController < ApplicationController
  def index
    @games = Game.all   # Get all the games and saved them on @games
    render json: @games # Render all the games on JSON format
  end

  def show
    @game = Game.find(params[:id]) # Get an specific game using the id of the URL
    render json: @game
  end

  def create
    @game = Game.new(game_params())
    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end

  def update
    @game = Game.find(params[:id]) #Find the game you want to update
    if @game.update_attributes(game_params()) # Validation using the same private method as before
      render json: @game # render the updated record back
    else
      render_error(@game.errors, :unprocessable_entity) # render errors
    end
  end

  def destroy
    @game = Game.find(params[:id]) # Find the game you want to destroy.
    @game.destroy # Destroy it.
    render json: { status: 'Successfully destroyed', data: @game }, status: :ok
  end

  private
  def game_params
    params.require(:game).permit(:name, :genre, :price, :release_date)
  end
end
