class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @powerbank = Powerbank.find(params[:powerbank_id])
    @booking.powerbank = @powerbank
    @booking.user = current_user
    @booking.status = "Pending"
    @booking.save
    redirect_to dashboard_path
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Booked"
    @booking.powerbank.availability = false
    @booking.powerbank.save
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to dashboard_path
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
