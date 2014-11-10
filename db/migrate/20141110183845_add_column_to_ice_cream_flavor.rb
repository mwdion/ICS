class AddColumnToIceCreamFlavor < ActiveRecord::Migration
  def change
    add_column :ice_cream_flavors, :ice_cream_id, :integer
    add_column :ice_cream_flavors, :flavor_id, :integer
    remove_column :ice_cream_flavors, :flavor
  end
end
