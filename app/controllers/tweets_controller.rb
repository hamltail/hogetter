class TweetsController < ApplicationController
  before_action :set_tweet, only: %i[show]
  before_action :authenticate_user!, only: %i[new create]

  def index
    @tweets = Tweet.order(updated_at: :DESC)
  end

  def show; end

  def new
    @tweet = current_user.tweets.build
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: 'ツイートしました。'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:content)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
