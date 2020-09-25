class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @products = Product.all

    # the `geocoded` scope filters only products with coordinates (latitude & longitude)
    @markers = @products.geocoded.map do |prod|
      {
        lat: prod.latitude,
        lng: prod.longitude
      }
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
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

  def edit
  end

  def update
    if @product.update(product_params)
      @product.price = product_params[:price].to_f * 100
      @product.save
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:product).permit(:description, :price, :address, :latitude, :longitude, :photo)
  end

end
