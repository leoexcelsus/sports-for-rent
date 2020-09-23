class RentalsController < ApplicationController
    def new
        @product = Product.find(params[:product_id])
        @rental = Rental.new
    end
    
    def create
        @rental = Rental.new(rental_params)
        # we need `product_id` to associate rental with corresponding product
        @rental.end_date = Date.parse(@rental.end_date.to_s)
        @rental.begin_date = Date.parse(@rental.begin_date.to_s)
        @product = Product.find(params[:product_id])
        @rental.product = @product
        @rental.rental_price = ( @rental.end_date - @rental.begin_date ).to_i*@product.price
        @rental.user = current_user
        @rental.save
        raise
        redirect_to rental_path(@product)
      end
    
      private
    
      def rental_params
        params.require(:rental).permit(:begin_date, :end_date)
      end
end
