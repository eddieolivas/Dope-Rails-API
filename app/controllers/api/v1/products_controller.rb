class Api::V1::ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products, status: 200
  end

  # As the name implies this action lets us create a new product.
  # If the product saves correctly, we rend the json data for the product.
  # If the product does not save correctly we rend an error object.
  def create
    product = Product.new(
      name: prod_params[:name],
      brand: prod_params[:brand],
      price: prod_params[:price],
      description: prod_params[:description]
    )
    if product.save
      render json: product, status 200
    else
      render json: {error: "Error creating product."}
    end
  end

  # This method looks up the product by the id, if it is found we render the json object
  # Otherwise, we rend an error object.
  def show
    product = Product.find_by(id: params[:id])
    if product
      render json: product, status 200
    else
      render json: {error: "Procuct Not Found."}
    end
  end

  # This private method is only available to this controller.
  # It uses the built-in methods .require and .permit provided by ActionController
  private
    def prod_params
      params.require(:product).permit([
        :name,
        :brand,
        :price,
        :description
      ])
    end
  end
end
