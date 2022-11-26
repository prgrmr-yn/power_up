class PowerbanksController < ApplicationController
  def index
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
    @powerbank.save
    redirect_to powerbanks_path
  end

  def edit
    @powerbank = Powerbank.find(params[:id])
  end

  def update
    @powerbank = Powerbank.find(params[:id])
    @powerbank.update(powerbank_params)
    @powerbank.save
  end
end
