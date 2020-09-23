class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new
    end
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:product).permit(:description, :price, :address, :latitude, :longitude, :user_id)
  end

end
