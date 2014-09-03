class PlacesController < ApplicationController
before_action :authenticate_user!, :only => [:new, :create]

	def index
		@places = Place.page(params[:page] || 1).per(3)
	end

	def new
		@place = Place.new
		redirect_to new_place_path
	end

	def create
		current_user.places.create(place_params)
		redirect_to root_path
	end

	def show
		@place = Place.find(params[:id])
	end

	private

	def place_params
		params.require(:place).permit(:name,:description,:address)
	end
end
