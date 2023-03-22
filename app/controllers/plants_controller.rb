class PlantsController < ApplicationController
  wrap_parameters format: []

  def index 
    plants = Plant.all 
    render json: plants 
  end 

  def show 
    plants = Plant.find_by(id: params[:id])
    render json: plants 
  end 

  def create 
    plant = Plant.create(new_plant)
    render json: plant, status: :created
  end 
end

  private 

  def new_plant
    params.permit(:name, :image, :price)
  end 

