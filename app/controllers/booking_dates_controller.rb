class BookingDatesController < ApplicationController
    before_action :set_date, only: [:show, :edit, :update, :destroy]

  def index
    @booking_dates = BookingDate.all
  end

  def show
  end

  def new
    @booking_date = BookingDate.find(params[:booking_date_id])
    @booking_date = BookingDate.new
  end

  def edit
  end

  def create
    @booking_date = BookingDate.new(params[:booking_date])
    @booking_date.save
    redirect_to booking_date_path(booking_date)
  end

  def update
    @booking_date.update(booking_date_params)
    redirect_to booking_date_path(booking_date)
  end

  def destroy
    @booking_date.destroy
    redirect_to booking_date_path
  end

  private

  def date_params
    params.require(:booking_date).permit(:morning, :afternoon, :day_all, :calendar_id)
  end

  def set_date
    @booking_date = BookingDate.find(params[:id])
  end
end
