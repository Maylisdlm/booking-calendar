class DatesController < ApplicationController
  before_action :set_date, only: [:show, :edit, :update, :destroy]

  def index
    @dates = Date.all
  end

  def show
  end

  def new
    @date = Date.find(params[:date_id])
    @date = Date.new
  end

  def edit
  end

  def create
    @date = Date.new(params[:date])
    @date.save
    redirect_to date_path(date)
  end

  def update
    @city.update(date_params)
    redirect_to date_path(date)
  end

  def destroy
    @date.destroy
    redirect_to date_path
  end

  private

  def date_params
    params.require(:date).permit(:morning, :afternoon, :day_all, :calendar_id)
  end

  def set_date
    @date = Date.find(params[:id])
  end
end
