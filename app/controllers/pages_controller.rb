class PagesController < ApplicationController
  def home
  end

  def dashboard
    raise
    @current_user = current_user
    @powerbanks_for_loan = Powerbank.where(user: current_user)
    # this will show all the current user's powerbanks

    @bookings = []

    @powerbanks_for_loan.each do |powerbank|
      powerbank.bookings.each do |booking|
        @bookings.append(booking)
      end
    end
    email = current_user.email
    @name = email.match(/.*@/).to_s.chop.capitalize
    # this will show all the current user's powerbanks that are being booked
    @my_bookings = Booking.where(user: current_user)
  end
end
