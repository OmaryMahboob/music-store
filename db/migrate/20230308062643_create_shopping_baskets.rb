class CreateShoppingBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_baskets do |t|
      t.references :product_it, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.string :quantity
      t.float :discount
      t.float :total_price

      t.timestamps
    end
  end
end
