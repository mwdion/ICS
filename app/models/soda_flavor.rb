class SodaFlavor < ActiveRecord::Base
  belongs_to :soda
  belongs_to :flavor 
end
