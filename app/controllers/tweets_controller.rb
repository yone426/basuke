class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(4).includes(:user)
    @tweet = Tweet.new
  end

  def new
  end

  def create
     @tweet = Tweet.create(tweet_params)
     respond_to do |format|
      format.html { redirect_to tweets_path }
      format.json
    end
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
