class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:name)
    # @most_reviews = Product.most_reviews
    # @contributor = Reviews.main_contributor
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
    flash[:notice] = "Product successfully added!"
      redirect_to  product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      flash[:notice] = "Product successfully removed!"
      redirect_to products_path
    end
  end

  # def most_reviews
  #   @products = Product.most_reviews
  #   render
  # end

private
  def product_params
    params.require(:product).permit(:name, :cost, :origin, :brand)
  end
end
