# frozen_string_literal: true

class LeaguesController < ApplicationController
  before_action :set_league, only: [:update, :destroy]

  # GET /leagues
  # GET /leagues.json
  def index
    @leagues = League.all

    render json: @leagues
  end

  # GET /leagues/1
  # GET /leagues/1.json
  def show
    render json: League.find(params[:id])
  end

  # POST /leagues
  # POST /leagues.json
  def create
    @league = current_user.leagues.build(league_params)

    if @league.save
      render json: @league, status: :created
    else
      render json: @league.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leagues/1
  # PATCH/PUT /leagues/1.json
  def update
    if @league.update(league_params)
      head :no_content
    else
      render json: @league.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leagues/1
  # DELETE /leagues/1.json
  def destroy
    @league.destroy

    head :no_content
  end

  def set_league
    @league = current_user.leagues.find(params[:id])
  end

  def league_params
    params.require(:league).permit(:text)
  end

  private :set_league, :league_params
end
