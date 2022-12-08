class PowerbanksController < ApplicationController
  def index
    # note - may take in query params in order to filter and return specific kinds of powerbanks
    # to be done after the search lecture with the pg_search gem
    # will return the full list for now - placeholder only
    if params[:longitude].present? && params[:latitude].present?
      puts params
      @powerbanks = Powerbank.near([params[:latitude].to_i, params[:longitude].to_i], 500)

      puts @powerbanks
    else
      @powerbanks = Powerbank.where.not(user: current_user)
    end

    @markers = @powerbanks.map do |powerbank|
      {
        lat: powerbank.latitude,
        lng: powerbank.longitude
      }
    end
  end

  def new
    @powerbank = Powerbank.new
  end

  def show
    @powerbank = Powerbank.find(params[:id])
    @booking = Booking.new
    email = @powerbank.user.email
    @name = email.match(/.*@/).to_s.chop.capitalize
  end

  def create
    @powerbank = Powerbank.new(powerbank_params)
    @powerbank.user = current_user
    @powerbank.availability = true
    # added as card for default avail boolean status
    @powerbank.save
    redirect_to dashboard_path
  end

  def edit
    @powerbank = Powerbank.find(params[:id])
  end

  def update
    @powerbank = Powerbank.find(params[:id])
    @powerbank.update(powerbank_params)
    @powerbank.save
    redirect_to dashboard_path
  end

  def destroy
    @powerbank = Powerbank.find(params[:id])
    @powerbank.delete
    redirect_to dashboard_path
  end

  private

  def powerbank_params
    params.require(:powerbank).permit(:name, :description, :price, :accessories, :photo)
  end


end
