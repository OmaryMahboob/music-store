class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :product_id, null: false, foreign_key: true
      t.references :customer_id, null: false, foreign_key: true
      t.references :order_id, null: false, foreign_key: true
      t.string :review
      t.text :comment

      t.timestamps
    end
  end
end
