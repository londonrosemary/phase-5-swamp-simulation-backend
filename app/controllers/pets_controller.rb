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

    def update
        @pet = Pet.find(params[:id])
        if @pet
            @pet.update(pet_params)
            @pet.save
            if @pet.save
                render json: @pet, status: 200
            else 
                render json: {error: "Validation errors"}, status: 422
            end
        else
            render json: {error: "Pet not found"}, status: 404
        end
    end

    def destroy
        @pet = Pet.find_by(id: params[:id])
        @pet.destroy
    end

    private

    def render_not_found_response
        render json: { error: "user not found" }, status: :not_found
    end

    def pet_params
        params.permit(:name, :happiness, :health, :hunger, :thirst, :boredom, :user_id, :image_url)
    end

    def update_params
        params.permit(:happiness, :health, :hunger, :thirst, :boredom, :id)
    end

end
