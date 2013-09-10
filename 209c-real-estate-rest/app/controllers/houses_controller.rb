class HousesController < ApplicationController

  def root
    redirect_to "/houses" and return
  end

  def index
    @houses = House.order(:id)
    render :houses and return
  end

  def show
    @house = House.where(id: params[:id]).first
    render :show and return
  end

end
