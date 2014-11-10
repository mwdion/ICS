class MilkshakesController < ApplicationController
  before_action :find_milkshake, only: [:show, :edit, :update, :destroy] 
  before_action :find_flavor, only: [:index, :new, :edit]  
  def index
    @milkshakes = Milkshake.all
    @ice_cream_flavors = IceCreamFlavor.all
  end

  def show
  end

  def new
    @milkshake = Milkshake.new
    @ice_cream_flavor = IceCreamFlavor.all
  end

  def create
    @milkshake = Milkshake.create milkshake_params
    if @milkshake.save == true
    redirect_to milkshakes_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @milkshake.update_attributes milkshake_params
    redirect_to milkshakes_path(@milkshake)
  end

  def destroy
    @milkshake.delete
    redirect_to milkshakes_path(@milkshake)
  end

   private
    def find_milkshake
      @milkshake = Milkshake.find params[:id]
    end
    def find_flavor
      @flavors = Flavor.all
    end
    def milkshake_params
      params.require(:milkshake).permit(:price, :ice_cream_flavor_id, :milk, :order_name, flavor_ids:[])
    end
end
