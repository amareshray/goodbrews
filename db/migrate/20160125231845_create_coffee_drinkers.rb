class CreateCoffeeDrinkers < ActiveRecord::Migration
  def change
    create_table :coffee_drinkers do |t|
      t.references :coffee, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :num_people

      t.timestamps null: false
    end
  end
end
