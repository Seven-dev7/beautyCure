class ProductsController < ApplicationController

  load_and_authorize_resource param_method: :params_product

  def index

  end

  def show
    
  end


  private

  def params_product
    params.require(:product).permit(:title, :description, :price)
  end
end
