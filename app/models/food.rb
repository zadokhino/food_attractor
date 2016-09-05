class Food < ActiveRecord::Base
	belongs_to :restaurant
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	private
	def ensure_not_referenced_by_any_line_item
		if line_item.empty?
			return true
		else
			errors.add(:base, 'Существуют')
			return false
		end
	end
end
