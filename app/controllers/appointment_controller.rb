class AppointmentController < ApplicationController
  
  load_and_authorize_resource param_method: :appointment_params
  
  def show
    @appointement
  end

  private

  def appointment_params
    params.require(:appointement).permit(:id, :order_id, :user_id, :employee_id, :start, :duration, :price)
  end
end
