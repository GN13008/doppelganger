class OffersController < ApplicationController
  def index
    # params where: where:
    if params[:where] == ""
      @offers = Offer.all
      @title = "All Result - #{@offers.count} doppels available"
    else
      @offers = Offer.where(localisation: params[:where])
      if @offers.count == 0
        @title = "Sorry, there are no doppel available in #{params[:where]}"
      else
        @title = "There are #{@offers.count} doppels available in #{params[:where]}"
      end
    end
  end

  def new
    @offer = Offer.new 
  end
  def show
    @offer = Offer.find(params[:id])
    @reviews = @offer.reviews
  end
  def edit
    @offer = Offer.find(params[:id])
  end
  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to dashboard_path
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to offers_path
    else
      render :new
    end 
  end

  private

  def offer_params
    params.require(:offer).permit(:user, :disponibility, :localisation, :description, :title)
  end

end
