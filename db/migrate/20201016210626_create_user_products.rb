class CreateUserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_products do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :variety
      t.string :unit_type
      t.integer :unit_quantity
      t.decimal :unit_price, precision:  10, scale: 4
      t.boolean :transport_include

      t.timestamps
    end
  end
end
