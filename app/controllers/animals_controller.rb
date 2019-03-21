class AnimalsController < ApplicationController
  #  GET /animals
  def index
    @animals = Animal.all
    render json: @animals
  end

  # GET /animals/1
  def show
    @animal = Animal.find(params[:species] == "Lion")

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

  # PATCH/PUT /animals/1
  # def update
  #   @animal = Animal.find(params[:id])

  #   if @animal.update(animal_params)
  #     render json: @animal
  #   else
  #     render json: @animal.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /animals/1
  # def destroy
  #   @animal = Animal.find(params[:id])

  #   @animal.destroy
  # end

  # private

  # # Only allow a trusted parameter "white list" through.
  # def animal_params
  #   params.require(:animal).permit(:species, :last_seen_location, :seen_count)
  # end
end
