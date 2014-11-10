class CreateSodaFlavors < ActiveRecord::Migration
  def change
    create_table :soda_flavors do |t|
      t.string :soda

      t.timestamps
    end
  end
end
