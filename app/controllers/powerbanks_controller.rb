class PowerbanksController < ApplicationController
  def index
    # note - may take in query params in order to filter and return specific kinds of powerbanks
    # to be done after the search lecture with the pg_search gem
    # will return the full list for now - placeholder only
    @powerbanks = Powerbank.all
  end

  def new
    @powerbank = Powerbank.new
  end

  def show
    @powerbank = Powerbank.find(params[:id])
  end

  def create
    @powerbank = Powerbank.new(powerbank_params)
    @powerbank.user = current_user
    # @powerbank.availability = true
    # added as card for default avail boolean status
    #
    @powerbank.save
    redirect_to powerbanks_path
  end

  def edit
    @powerbank = Powerbank.find(params[:id])
    if @powerbank.user != current_user
      redirect_to powerbanks_path
    end
  end

  def update
    @powerbank = Powerbank.find(params[:id])
    @powerbank.update(powerbank_params)
    @powerbank.save
    redirect_to powerbanks_path
  end

  def destroy
    @powerbank = Powerbank.find(params[:id])
    @powerbank.delete
    redirect_to powerbanks_path, status: :see_other
  end

  private
  def powerbank_params(hash = {})
    params.require(:powerbank).permit(:name, :description, :price, :accessories, :availability)
  end

end
