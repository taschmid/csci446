class SelectedPet < ActiveRecord::Base
  belongs_to :pet
  belongs_to :cart
  has_many :pet
end
