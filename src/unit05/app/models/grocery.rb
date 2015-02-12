class Grocery < ActiveRecord::Base
	belongs_to :stores

	validates :name, presence: true
	validates :inventory, numericality: { only_integer: true }
end
