class ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(reservation_params)
    @offer = Offer.find(params[:offer_id])
    @reservation.offer = @offer
    @reservation.user = current_user
    if @reservation.save
        redirect_to dashboard_path
    else
      render "offers#show"
    end
  end
  def update
    reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to dashboard_path
    else
      render "pages#dashboard"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to dashboard_path
  end

  private

  def reservation_params
    params.require(:reservation).permit(:status, :start_date, :end_date)
  end
end
