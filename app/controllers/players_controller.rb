class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.includes(:user)
    @game_players = GamePlayer.all
    @scorer = GamePlayer.joins(:player).group("players.name").order('sum_score desc').sum(:score)

    @score_key = @scorer.keys
    @score_value = @scorer.values

  end
  
  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    redirect_to players_path
  end

  def show
    # @player = Player.find(params[:id])
  end

  def edit
    # @player = Player.find(params[:id])
  end
  
  def update
    # @player = Player.find(params[:id])
    @player.update(player_params)
    redirect_to players_path
  end

  def destroy
    # @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:position, :name, :uniform_number, :point, :image).merge(user_id: current_user.id)
  end

  def set_player
    @player = Player.find(params[:id])
  end


end
