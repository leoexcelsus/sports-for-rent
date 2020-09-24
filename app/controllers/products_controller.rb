class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    # raise
    @product.price = product_params[:price].to_f * 100
    @product.user = current_user

    if @product.save
      redirect_to @product, notice: 'Equipamento cadastrado.'
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
    params.require(:product).permit(:description, :price, :address, :latitude, :longitude)
  end

end
