class CartsController < ApplicationController
  #before_action :cart_params, only: [:show]
  load_and_authorize_resource param_method: :cart_params

  def show
    #@cart_services = Cart.find(params[:id]).cart_services
    @cart_services = @cart.cart_services
    #Cart.find(params[:id]).cart_services
  end

  def add_service
    p 'XXX' *20
    p 'XXX' *20
    p 'XXX' *20
    p params.inspect
    cart_s = CartService.new(cart_id: params[:cart_id])
    p cart_s
    p 'XXX' *20
    p 'XXX' *20
    @cart_service = CartService.create!(cart_id: params[:cart_id], service_id: params[:service_id])
    redirect_to cart_path(current_user.cart.id)
  end

  private
  
  def cart_params
    params.require(:cart).permit(:id, :cart_id, :service_id)
  end
end
