class IceCream < ActiveRecord::Base
  has_many :ice_cream_flavors
  has_many :flavors, through: :ice_cream_flavors
  # validates :price, presence: true;
  # validates :vessel, presence: true;
  # validates :order_name, presence: true;
end
