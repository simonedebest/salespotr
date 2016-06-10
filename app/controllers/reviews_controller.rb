class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    if @review.save
      redirect_to product_path(@product)
    else
      render 'products/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
