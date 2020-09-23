class CartController < ApplicationController
  def show
  end

  def index
    @carts = Cart.all
  end

  def new
    @cart = Cart.new
  end
end
