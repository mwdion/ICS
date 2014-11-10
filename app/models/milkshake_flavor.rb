class MilkshakeFlavor < ActiveRecord::Base
  belongs_to :milkshake
  belongs_to :flavor
end
