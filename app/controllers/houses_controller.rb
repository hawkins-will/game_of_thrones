class HousesController < ApplicationController

  def intro
  end

  def index
    @houses = House.all
  end


  def show
    @house = House.find(params[:id])
  end


  def new
    @house = House.new
  end

  def create
    @house = House.create!(house_params)

    redirect_to "/houses/#{@house.id}"
  end


  def edit
    @house = House.find(params[:id])
  end


  def update
    @house = House.find(params[:id])
    @house.update(house_params)

    redirect_to "/houses/#{@house.id}"
  end


  def destroy

  end


  def join
    @houses = House.all
  end

  private
  def house_params
    params.require(:house).permit(:name, :sigil_url, :words)
  end

end
