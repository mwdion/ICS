class CreateMilkshakeFlavors < ActiveRecord::Migration
  def change
    create_table :milkshake_flavors do |t|
      t.integer :milkshake_id
      t.integer :flavor_id

      t.timestamps
    end
  end
end
