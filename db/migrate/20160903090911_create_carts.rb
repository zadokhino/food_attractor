class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.float :amount
      t.float :total_sum

      t.timestamps null: false
    end
  end
end
