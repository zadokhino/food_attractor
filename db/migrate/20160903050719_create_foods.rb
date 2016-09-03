class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :name
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
