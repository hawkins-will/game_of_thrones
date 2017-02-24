class  CharactersController < ApplicationController

  def show
    @character = Character.find(params[:id])
  end


  def new
    @house = House.find(params[:id])
    @character = Character.new
  end

  def create
    @house = House.find(params[:id])
    @character = @house.characters.create!(character_params)

    redirect_to "/characters/#{@character.id}"
  end


  def edit

  end


  def update

  end


  def destroy

  end

  private
  def character_params
    params.require(:character).permit(:name, :gender, :img_url, :status)
  end
end
