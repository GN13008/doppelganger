class OffersController < ApplicationController
  def index
    if params[:where].present? && params[:when].present?
      @offers = Offer.search_by_localisation(params[:where])
      @offers = @offers.search_by_disponibility(params[:when])
    elsif params[:when].present?
      @offers = Offer.search_by_disponibility(params[:when])
    elsif params[:where].present?
      @offers = Offer.search_by_localisation(params[:where])
    else
      @offers = Offer.all
    end
    @markers = @offers.geocoded.map do |offer|
    {
      lat: offer.latitude,
      lng: offer.longitude
    }
    end
  end

  def new
    @offer = Offer.new
  end

  def show
    @offer = Offer.find(params[:id])
    @reviews = @offer.reviews
    @reservation = Reservation.new
    @rating_average = "No reviews Yet"
    if @offer.reviews.count != 0
      @rating_average = 0
      @offer.reviews.each do |review|
        @rating_average += review.rating
      end
      @rating_average = @rating_average.fdiv(@offer.reviews.count) 
    end
  end

  def edit
    @offer = Offer.find(User.find(params[:id]).offer_ids.first)
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to dashboard_path
  end

  def destroy
    @offer = Offer.find(User.find(params[:id]).offer_ids.first)
    @offer.destroy
    redirect_to dashboard_path
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:user, :disponibility, :localisation, :description, :title)
  end

end
