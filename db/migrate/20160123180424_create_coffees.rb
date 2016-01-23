class CreateCoffees < ActiveRecord::Migration
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :company
      t.string :image
      t.integer :rating
      t.string :origin
      t.text :flavors
      t.string :brew_method
      t.text :notes
      t.string :url

      t.timestamps null: false
    end
  end
end
