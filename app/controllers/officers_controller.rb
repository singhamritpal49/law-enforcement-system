class OfficersController < ApplicationController
  before_action :set_officer, only: [:show, :update, :destroy]

  # GET /officers
  def index
    @officers = Officer.all

    render json: @officers
  end

  def profile
    
    render json: current_officer
  end

  # GET /officers/1
  def show
    render json: @officer, include: [:tickets]
  end

  # POST /officers
  def create
    @officer = Officer.new(officer_params)

    if @officer.save
      render json: @officer, status: :created, location: @officer
    else
      render json: @officer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /officers/1
  def update
    if @officer.update(officer_params)
      render json: @officer
    else
      render json: @officer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /officers/1
  def destroy
    @officer.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_officer
    @officer = Officer.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def officer_params
    params.permit(:first_name, :middle_name, :last_name, :badge, :address1, :address2, :city, :state, :zip, :cell, :phone, :password)
  end
end
