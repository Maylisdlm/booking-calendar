class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.find(params[:city_id])
    @city = City.new
  end

  def edit
  end

  def create
    @city = City.new(params[:city])
    @city.save
    redirect_to city_path(city)
  end

  def update
    @city.update(city_params)
    redirect_to city_path(city)
  end

  def destroy
    @city.destroy
    redirect_to city_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :calendar_id)
  end

  def set_city
    @city = City.find(params[:id])
  end
end
