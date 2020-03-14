class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all.order("created_at DESC").page(params[:page]).per(4)
    @tweet = Tweet.new
  end

  def new
  end

  def create
     @tweet = Tweet.create(tweet_params)
     redirect_to root_path
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to root_path
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text).merge(user_id: current_user.id)
  end

end
