class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @products = Product.all
    @newest_products = Product.newest_products
    @most_reviews = Product.most_reviews
    @locally_made = Product.locally_made
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
    flash[:notice] = "Review successfully added!"
      redirect_to  product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @review= Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review successfully updated!"
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed!"
      redirect_to product_path(@review.product)
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating)
  end
end
