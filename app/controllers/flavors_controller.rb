class FlavorsController < ApplicationController
  before_action :find_flavor, only: [:show, :edit, :update, :destroy]  
  def index
    @flavors = Flavor.all
  end

  def show
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.create flavor_params
    if @flavor.save == true
    redirect_to flavors_path
    else
    render :new
    end
  end

  def edit
  end

  def update
    @flavor.update_attributes flavor_params
    redirect_to flavors_path(@flavor)
  end

  def destroy
    @flavor.delete
    redirect_to flavors_path(@flavor)
  end

 private
  def find_flavor
    @flavor = Flavor.find params[:id]
  end
  def flavor_params
    params.require(:flavor).permit(:name)
  end
end
