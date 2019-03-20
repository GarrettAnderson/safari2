class AnimalsController < ApplicationController
  #  GET /animals
  def index
    @animals = Animal.all
    render json: @animals
  end

  # GET /animals/1
  def show
    @animal = Animal.find(params[:id])

    render json: @animal
  end

  # POST /animals
  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      render json: @animal, status: :created, location: @animal
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end
end
