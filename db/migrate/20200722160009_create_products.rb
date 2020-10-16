class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :varieties, array: true, default: [] 

      t.timestamps
    end
    add_index :products, :name, unique: true
    add_index :products, :varieties, using: 'gin'
  end
end
