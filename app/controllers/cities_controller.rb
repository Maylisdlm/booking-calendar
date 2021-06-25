class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @city = City.new
  end

  def edit
    @city = City.find(params[:id])
  end

  def create_table
    @city = City.new(params[:city])
    @city.save
    redirect_to city_path(city)
  end

  def update
    @city = City.find(params[:id])
    @city.update(city_params)
    redirect_to city_path(city)
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to city_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :calendar_id)
  end
end
