class AddRoasterIdToCoffees < ActiveRecord::Migration
  def change
    add_column :coffees, :roaster_id, :integer
    add_index :coffees, :roaster_id
  end
end
