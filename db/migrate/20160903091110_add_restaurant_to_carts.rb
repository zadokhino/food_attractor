class AddRestaurantToCarts < ActiveRecord::Migration
  def change
    add_reference :carts, :restaurant, index: true, foreign_key: true
  end
end
