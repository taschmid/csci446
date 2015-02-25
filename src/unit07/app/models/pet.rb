class Pet < ActiveRecord::Base
	validates :name,
		presence: true

	validates :description,
		length: {minimum: 10, maximum: 40}

	enum pet_type: [:dog, :cat]
end
