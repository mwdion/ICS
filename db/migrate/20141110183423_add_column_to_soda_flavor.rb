class AddColumnToSodaFlavor < ActiveRecord::Migration
  def change
    add_column :soda_flavors, :soda_id, :integer
    add_column :soda_flavors, :flavor_id, :integer
    remove_column :soda_flavors, :soda
  end
end
