class AddCartToFoods < ActiveRecord::Migration
  def change
    add_reference :foods, :cart, index: true, foreign_key: true
  end
end
