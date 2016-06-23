class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :update, :destroy]

  # GET /friends
  # GET /friends.json
  def index
    @friends = Friend.all

    render json: @friends
  end

  # GET /friends/1
  # GET /friends/1.json
  def show
    render json: @friend
  end

  # POST /friends
  # POST /friends.json
  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      render json: @friend, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  # PATCH/PUT /friends/1.json
  def update
    @friend = Friend.find(params[:id])

    if @friend.update(friend_params)
      head :no_content
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  # DELETE /friends/1.json
  def destroy
    @friend.destroy

    head :no_content
  end

  private

    def set_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:user_id, :friend_id)
    end
end
