class AddUserIdToCoffees < ActiveRecord::Migration
  def change
    add_column :coffees, :user_id, :integer
    add_index :coffees, :user_id

  end
end
