class AddDiscountColumnToMilkshake < ActiveRecord::Migration
  def change
    add_column :milkshakes, :discount, :string
  end
end
