require 'test_helper'

class PetTest < ActiveSupport::TestCase
	test 'empty pet' do
		pet = Pet.new
		assert !pet.save, 'saved an empty pet'
	end

	test 'pet descriptions correct lengths' do
		assert( !Pet.new(name: pets(:nine).name, description: pets(:nine).description).valid?,
		'Must have minimum description of 10 characters' )

		assert( Pet.new(name: pets(:ten).name, description: pets(:ten).description).valid?,
		'Errored on description with 10 characters' )

		assert( Pet.new(name: pets(:forty).name, description: pets(:forty).description).valid?,
		'Errored on description with 40 characters' )

		assert( Pet.new(name: pets(:fortyone).name, description: pets(:fortyone).description).valid?,
		'Must have maximum description of 40 characters' )
	end

	test 'pet with no name' do
		assert( !Pet.new(name: pets(:noName).name, description: pets(:noName).description).valid?,
		'saved pet with no name' )
	end
end
