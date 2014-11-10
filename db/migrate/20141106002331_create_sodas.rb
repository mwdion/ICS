class CreateSodas < ActiveRecord::Migration
  def change
    create_table :sodas do |t|
      t.integer :ice_cream_flavor_id
      t.integer :soda_flavor_id
      t.integer :price
      t.string :discount
      t.string :order_name

      t.timestamps
    end
  end
end
