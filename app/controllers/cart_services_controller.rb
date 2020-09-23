class CartServicesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only:[:create]
  before_action :params_cart_service, only: :create
  #load_and_authorize_resource param_method: :params_cart_service

  def index
    @cart_services = CartService.all
  end

  def show
  end
  
  def new
    @cart_service = CartService.new
  end

  def create
    
    service = Service.find(params[:service_id])
    @cart_service = @cart.cart_services.new(service: service)
    
    respond_to do |format|
      if @cart_service.save
        format.html { redirect_to @cart_service.cart, notice: 'Cart Service was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  private

  def params_cart_service
    p '!!!!'*20
    p '!!!!'*20
    p '!!!!'*20
    p params.inspect
    p '!!!!'*20
    p '!!!!'*20
    params.require(:cart_services).permit(:id, :service_id, :cart_id, )
  end
end
