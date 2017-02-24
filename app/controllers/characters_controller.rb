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
    @character = Character.find(params[:id])
  end


  def update
    @character = Character.find(params[:id])
    @character.update(character_params)

    redirect_to "/characters/#{@character.id}"
  end


  def destroy
    @character = Character.find(params[:id])
    @house_id = @character.house.id
    @character.destroy

    redirect_to "/houses/#{@house_id}"
  end

  private
  def character_params
    params.require(:character).permit(:name, :gender, :img_url, :status)
  end
end
