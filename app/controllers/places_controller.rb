class PlacesController < ApplicationController
	def index
		@places = Place.page(params[:page] || 1).per(3)
	end

	def new
		@place = Place.new
	end
end
