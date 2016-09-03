class FoodChangeColumnType < ActiveRecord::Migration
  def change
  	change_column(:foods, :name, :string)
  end
end
