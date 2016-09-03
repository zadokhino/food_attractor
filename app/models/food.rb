class Food < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :cart
end
