class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

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
    @reviews = {}
    Rental.where(product: @product).each do |x|
      @reviews[x.user_id] = x.costumer_review unless x.costumer_review.nil?
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      @product.price = product_params[:price].to_f * 100
      @product.save
      redirect_to @product, notice: 'As informações foram corretamentes editadas'
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: 'O equipamento foi removido'
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
