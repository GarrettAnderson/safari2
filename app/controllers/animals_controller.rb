class AnimalsController < ApplicationController
  #  GET /animals
  def index
    # species = params[:species]
    location = params[:last_seen_location ]

    if species
      @animals = Animal.where("species ilike ?", "%#{location}%")
      # ilike is case insenitive like
      # think about the SQL statement - select * from foods where name like %name%
    else
      @animals = Animal.all
    end

    render json: @animals
  end

  # GET /animals/1
  def show
    @animal = Animal.find(params[:species] == 2)

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
