class CartsController < ApplicationController
  load_and_authorize_resource param_method: :params_cart
  def show
    @cart_services = Cart.find(params[:id]).cart_services
  end

  def add_service
    p 'XXX' *20
    p 'XXX' *20
    p 'XXX' *20
    p params.inspect
    @cart_service = CartService.create!(cart_id: params[:cart_id], service_id: 1)
  end

  private
  
  def params_cart
    params.require(:cart).permit(:service_id, :cart_id, :id)
  end
end
