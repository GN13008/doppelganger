class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    @reservation = Reservation.find(params[:reservation_id])
    @review.reservation = @reservation
    @review.user = current_user
    if @reservation.save
        redirect_to offer_path(@reservation.offer), notice: "review created"
    else
      render "pages#dashboard", alert: "try again dude !"
    end 
  end

    private
  def review_params
      params.require(:review).permit(:rating, :content)
  end 
  
  
end
