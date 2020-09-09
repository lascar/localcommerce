class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :brands, array: true, default: [] 
      t.text :varieties, array: true, default: [] 
      t.text :aspects, array: true, default: [] 
      t.text :packagings, array: true, default: [] 
      t.text :sizes, array: true, default: [] 
      t.text :calibers, array: true, default: [] 

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end
