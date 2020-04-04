class TweetsController < ApplicationController
  before_action :set_tweet, only: [:edit, :update, :destroy]
  before_action :move_to_index, except: [:index]
  
  
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(4).includes(:user)
    @tweet = Tweet.new
  end

  def new
  end

  def create
     @tweet = Tweet.create(tweet_params)
     redirect_to root_path
    #  respond_to do |format|
    #   format.html { redirect_to tweets_path }
    #   format.json
    
  end

  def edit
    # @tweet = Tweet.find(params[:id])
  end

  def update
    # @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)
    redirect_to root_path
  end

  def destroy
    # @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

end
