class ShelterController < ApplicationController
	def index
		@pets = Pet.order(pet_type: :desc)
	end
end
