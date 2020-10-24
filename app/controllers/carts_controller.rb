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

  def delete_cart_item
    @cart_service = CartService.find(params[:cart_id])
    @cart_service.destroy
    redirect_to cart_path(current_user.cart.id)
  end

  def lock_cart
    @cart_service = CartService.find(params[:cart_id])
    @appointment = Appointment.new
  end

  private
  
  def cart_params
    params.require(:cart).permit(:id, :cart_id, :service_id)
  end
end
