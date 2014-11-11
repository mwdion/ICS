class IceCreamsController < ApplicationController
  before_action :find_icecream, only: [:show, :edit, :update, :destroy] 
  before_action :find_flavor, only: [:index, :new, :edit, :show]  
  def index
    @ice_cream = IceCream.all
    @flavors = Flavor.all
  end

  def show
  end

  def new
    @ice_cream = IceCream.new
  end

  def create
    @ice_cream = IceCream.create ice_cream_params
    if @ice_cream.save == true
    redirect_to ice_creams_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @ice_cream.update_attributes ice_cream_params
    redirect_to ice_creams_path(@ice_cream)
  end

  def destroy
    @ice_cream.delete
    redirect_to ice_creams_path(@ice_cream)
  end

   private
    def find_icecream
      @ice_cream = IceCream.find params[:id]
    end
    def find_flavor
      @flavors = Flavor.all
    end
    def ice_cream_params
      params.require(:ice_cream).permit(:price, :ice_cream_flavor_id, :vessel, :order_name, flavor_ids:[])
    end
end
