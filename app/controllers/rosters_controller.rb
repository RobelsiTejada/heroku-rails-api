# frozen_string_literal: true

class RostersController < ApplicationController
  before_action :set_roster, only: [:update, :destroy]

  # GET /rosters
  # GET /rosters.json
  def index
    @rosters = Roster.all

    render json: @rosters
  end

  # GET /rosters/1
  # GET /rosters/1.json
  def show
    render json: Roster.find(params[:id])
  end

  # POST /rosters
  # POST /rosters.json
  def create
    @roster = current_user.rosters.build(roster_params)

    if @roster.save
      render json: @roster, status: :created
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rosters/1
  # PATCH/PUT /rosters/1.json
  def update
    if @roster.update(roster_params)
      head :no_content
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rosters/1
  # DELETE /rosters/1.json
  def destroy
    @roster.destroy

    head :no_content
  end

  def set_roster
    @roster = current_user.rosters.find(params[:id])
  end

  def roster_params
    params.require(:roster).permit(:text)
  end

  private :set_roster, :roster_params
end
