class Cart < ActiveRecord::Base
	has_many :foods
	belongs_to :restaurant
end
