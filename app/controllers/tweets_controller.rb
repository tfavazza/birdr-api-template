class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all

    render json: @tweets
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
    render json: @tweet
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(tweet_params)

    if @tweet.save
      render json: @tweet, status: :created, location: @tweet
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    @tweet = Tweet.find(params[:id])

    if @tweet.update(tweet_params)
      head :no_content
    else
      render json: @tweet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy

    head :no_content
  end

  private

    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    def tweet_params
      params.require(:tweet).permit(:user_id, :content)
    end
end
