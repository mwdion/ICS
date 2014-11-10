class Milkshake < ActiveRecord::Base
  has_many :milkshake_flavors
  has_many :flavors, through: :milkshake_flavors
end
