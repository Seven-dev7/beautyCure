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
    @cart_service = CartService.find(params[:cart_service_id])
    @cart_service.destroy  
    update_appointments(@cart)
    redirect_to cart_path(current_user.cart.id)
  end
  
  def destroy_all_items
    #@cart.cart_products.destroy_all
    @cart.cart_services.destroy_all
    update_appointments(@cart)
    flash[:success] = 'Vous avez vidé votre panier'
    redirect_to cart_path(current_user.cart.id)
  end

  private
  
  def update_appointments(cart)
    cart.appointment&.destroy if cart.cart_services.count == 0
  end

  def cart_params
    params.require(:cart).permit(:id, :cart_id, :service_id)
  end
end
