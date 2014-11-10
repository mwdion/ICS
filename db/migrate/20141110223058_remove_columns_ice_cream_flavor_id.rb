class RemoveColumnsIceCreamFlavorId < ActiveRecord::Migration
  def change
    remove_column :ice_creams, :ice_cream_flavor_id
    remove_column :milkshakes, :ice_cream_flavor_id
    remove_column :sodas, :ice_cream_flavor_id
    remove_column :sodas, :soda_flavor_id
    add_column :sodas, :float_flavor, :string
  end
end
