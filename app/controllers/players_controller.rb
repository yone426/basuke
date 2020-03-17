class PlayersController < ApplicationController
  def index
    @players = Player.all.order(point: :desc).order(name: :desc)
    # １位
    @first_pointer = @players.first
    # ２位
    @second_pointer = @players.second
    # ３位
    @third_pointer = @players.third
  end
  
  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    redirect_to players_path
  end

  def show
    @player = Player.find(params[:id])
  end

  def edit
    @player = Player.find(params[:id])
  end
  
  def update
    player = Player.find(params[:id])
    player.update(player_params)
    redirect_to players_path
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to players_path
  end

  private
  def player_params
    params.require(:player).permit(:position, :name, :uniform_number, :point, :image).merge(user_id: current_user.id)
  end
end
