class ShelterController < ApplicationController
	include CurrentCart

	def index
		set_cart
		@pets = Pet.where("pet_status = 'available'").order(pet_type: :desc)
	end
end
