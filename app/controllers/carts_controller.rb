class CartsController < ApplicationController

  load_and_authorize_resource param_method: :cart_params

  def show
    @cart_services = @cart.cart_services
    @array_price = []
    @array_duration = []
  end

  def add_service
    @cart_service = CartService.create!(cart_id: params[:cart_id], service_id: params[:service_id])
    redirect_to cart_path(current_user.cart.id)
  end

  def delete_cart
    p 'XXXXXXXXXXX' *20
    p 'XXXXXXXXXXX' *20
    p params.inspect
    @cart_service = CartService.find(params[:cart_id])
    p 'XXXXXXXXXXX' *20
    p 'XXXXXXXXXXX' *20
    p 'XXXXXXXXXXX' *20
    p @cart_service.inspect
    p 'XXXXXXXXXXX' *20
    p 'XXXXXXXXXXX' *20
    @cart_service.destroy
    redirect_to cart_path(current_user.cart.id)
  end

  private
  
  def cart_params
    params.require(:cart).permit(:id, :cart_id, :service_id)
  end
end
