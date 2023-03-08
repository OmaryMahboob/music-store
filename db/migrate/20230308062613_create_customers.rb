class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.references :user_id, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :city
      t.integer :zip_code

      t.timestamps
    end
  end
end
