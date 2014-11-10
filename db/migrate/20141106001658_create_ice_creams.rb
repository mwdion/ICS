class CreateIceCreams < ActiveRecord::Migration
  def change
    create_table :ice_creams do |t|
      t.integer :ice_cream_flavor_id
      t.integer :price
      t.string :vessel
      t.string :order_name

      t.timestamps
    end
  end
end
