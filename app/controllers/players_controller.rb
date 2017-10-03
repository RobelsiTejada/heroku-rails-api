# frozen_string_literal: true

class PlayersController < ApplicationController
  before_action :set_player, only: [:update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all

    render json: @players
  end

  # GET /players/1
  # GET /players/1.json
  def show
    render json: Player.find(params[:id])
  end

  # POST /players
  # POST /players.json
  def create
    @player = current_user.players.build(player_params)

    if @player.save
      render json: @player, status: :created
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    if @player.update(player_params)
      head :no_content
    else
      render json: @player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy

    head :no_content
  end

  def set_player
    @player = current_user.players.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:text)
  end

  private :set_player, :player_params
end
