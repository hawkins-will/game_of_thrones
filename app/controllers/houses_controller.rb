class HousesController < ApplicationController

  def intro
  end

  def index
    @houses = House.all
  end

end
