class RentalsController < ApplicationController
    def new
        @product = Product.find(params[:product_id])
        @rental = Rental.new
    end

    def create
        @rental = Rental.new(rental_params)
        @rental.end_date = Date.parse(@rental.end_date.to_s)
        @rental.begin_date = Date.parse(@rental.begin_date.to_s)
        @product = Product.find(params[:product_id])
        @rental.product = @product
        @rental.rental_price = ( @rental.end_date - @rental.begin_date ).to_i*@product.price
        @rental.user = current_user
        if @rental.save
          redirect_to rental_path(Rental.last.id)
        else
          render :new
        end

      end

    def show
      @rental = Rental.find(params[:id])
    end


      private

      def rental_params
        params.require(:rental).permit(:begin_date, :end_date)
      end
end
