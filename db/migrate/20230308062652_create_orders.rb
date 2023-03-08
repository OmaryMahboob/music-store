class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer_id, null: false, foreign_key: true
      t.references :shopping_basket_id, null: false, foreign_key: true
      t.date :order_date
      t.string :payment_method

      t.timestamps
    end
  end
end
