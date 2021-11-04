class PetsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        @pets = Pet.all
        render json: @pets
    end

    def show
        @pet = Pet.find(params[:id])
        render json: @pet, status: 200
    end

    def create
        @pet = Pet.create!(pet_params)
        render json: @pet, status: 200
    end

    def destroy
        @pet = pet.find(params[:id])
        @pet.destroy
    end

    private

    def render_not_found_response
        render json: { error: "user not found" }, status: :not_found
    end

    def pet_params
        params.permit(:name, :happiness, :health, :hunger, :thirst, :boredom, :user_id)
    end
end
