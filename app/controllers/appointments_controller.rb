class AppointmentsController < ApplicationController
  
  load_and_authorize_resource param_method: :appointment_params
  
  def new
    @appointement = Appointment.new
  end

  def create
    appointment = Appointment.create!(appointment_params)
    redirect_to appointment_path(appointement.id)
  end

  def show
    @appointement = Appointment.find(params[:id])
  end



  private

  def appointment_params
    params.require(:appointment).permit(:id, :user_id, :employee_id, :cart_id, :start, :duration, :price)
  end
end
