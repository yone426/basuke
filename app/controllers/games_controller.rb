class GamesController < ApplicationController

  def index
    @games = Game.all
    
  end
  
  def new
    @game = Game.new
    @game.game_players.build
  end

  def create
    @game = Game.create(game_params)
    redirect_to games_path
  end

  def show
  end

  def edit
    @game = Game.find(params[:id])
  end

  def search
    @games = Game.search(params[:keyword])
  end
  
  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to games_path
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:opponent, :place, :result, :goal, :allow, :date,[game_players_attributes: [:game_id, :player_id, :score]]).merge(user_id: current_user.id)
  end

end
