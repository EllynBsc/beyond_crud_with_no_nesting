class ReviewsController < ApplicationController
  def index
    @resto = Restaurant.find(params[:restaurant_id])
    @reviews = @resto.reviews
  end
  def new
    # raise
    @resto = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # @resto = Restaurant.find(params[:restaurant_id])
    @review = Review.new(strong_review_params)
    # @review.restaurant = @resto
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def strong_review_params
    params.require(:review).permit(:content, :restaurant_id)
  end
end
