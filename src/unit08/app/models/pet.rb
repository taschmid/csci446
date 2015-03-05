class Pet < ActiveRecord::Base
	validates :name,
		presence: true

	validates :description,
		length: {minimum: 10, maximum: 40}

	enum pet_type: [:dog, :cat]

	before_destroy :ensure_not_selected

	private

	def ensure_not_selected
		if selected_pets.empty?
		  return true
		else
		  errors.add(:base, 'Pet has already been selected')
		  return false
		end
	end
end
