class SodasController < ApplicationController
  before_action :find_soda, only: [:show, :edit, :update, :destroy] 
  before_action :find_flavor, only: [:index, :new, :edit]  
  def index
    @sodas = Soda.all
  end

  def show
  end

  def new
    @soda = Soda.new
  end

  def create
    @soda = Soda.create soda_params
    if @soda.save == true
    redirect_to sodas_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @soda.update_attributes soda_params
    redirect_to sodas_path(@soda)
  end

  def destroy
    @soda.delete
    redirect_to sodas_path(@soda)
  end

 private
  def find_soda
    @soda = Soda.find params[:id]
  end
  def find_flavor
    @flavors = Flavor.all
  end
  def soda_params
    params.require(:soda).permit(:price, :soda_flavor_id, :ice_cream_flavor_id, :order_name, :price, :discount, flavor_ids:[])
  end
end
