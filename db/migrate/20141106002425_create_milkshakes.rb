class CreateMilkshakes < ActiveRecord::Migration
  def change
    create_table :milkshakes do |t|
      t.integer :ice_cream_flavor_id
      t.integer :price
      t.string :milk
      t.string :order_name

      t.timestamps
    end
  end
end
