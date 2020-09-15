class ServicesController < ApplicationController
  
  load_and_authorize_resource param_method: :params_service
  
  def index

  end

  def show

  end

  
  private

  def params_service
    params.require(:service).permit(:title, :description, :price)
  end
end
