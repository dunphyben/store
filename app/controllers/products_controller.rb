class ProductsController < ApplicationController
  def new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_url, notice "Product Created!"
    else
      render "new"
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
