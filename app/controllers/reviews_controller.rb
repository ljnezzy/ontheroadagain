class ReviewsController < ApplicationController
	  before_action :set_vehicle

  def index
    @reviews = @vehicle.reviews
  end

  def new
    @review = @vehicle.reviews.new
  end

  def create
    @review = @vehicle.reviews.new(review_params)
    if @review.save
      redirect_to vehicle_reviews_path(@vehicle),
        notice: "Thanks for your review!"
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to vehicle_reviews_path(@vehicle), notice: "Review successfully updated!" 
    else
      render :edit
    end
  end

  def destroy
    @review = @vehicle.reviews.find(params[:id])
    @review.destroy
    redirect_to vehicle_reviews_path(@vehicle), notice: "Review successfully deleted!"
  end

private

  def review_params
    params.require(:review).permit(:name, :comment, :stars)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  end
end
