class CartController < ApplicationController
  
  def show
    @cart_services = Cart.find(params[:id]).cart_services
  end

end
