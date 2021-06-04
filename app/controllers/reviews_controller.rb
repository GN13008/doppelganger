class ReviewsController < ApplicationController
  def new
    @reservation = Reservation.find(params[:reservation_id])
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @reservation = Reservation.find(params[:reservation_id])
    @review.reservation = @reservation
    if @review.save
      redirect_to offer_path(@reservation.offer), notice: "review created"
    else
      redirect_to dashboard_path, alert: "Save review not working !"
    end 
  end

    private
  def review_params
      params.require(:review).permit(:rating, :content)
  end 
  
  
end
