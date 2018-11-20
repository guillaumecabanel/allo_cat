class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
  	@missing_pets = Pet.where(found: false)
  	@found_pets   = Pet.where(found: true)
  end

  def show
  end

  def new
  	@pet = Pet.new
  end

  def create
  	Pet.create(pet_params)
  	redirect_to pets_path
  end

  def edit
  end

  def update
  	@pet.update(pet_params)
  	redirect_to pet_path(@pet)
  end

  def destroy
  	@pet.destroy
  	redirect_to pets_path
  end

  private

  def pet_params
  	params.require(:pet).permit(
  		:name,
  		:specy,
  		:sign,
  		:found
  	)
  end

  def set_pet
  	@pet = Pet.find(params[:id])
  end
end
