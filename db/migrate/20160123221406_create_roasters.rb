class CreateRoasters < ActiveRecord::Migration
  def change
    create_table :roasters do |t|
      t.string :name
      t.string :image
      t.string :url
      t.string :city
      t.string :country

      t.timestamps null: false
    end
  end
end
