class AppointmentsController < ApplicationController
  before_action :set_user
  
  def index

  end

  def new
    @doctors = Doctor.all
    @appointment = @user.appointments.new
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to user_appointments_path(@user)
    else
      render :new
    end
  end

  def destroy
    @appointment = @user.appointments.find(params[:id])
    @appointment.destroy
    redirect_to user_appointments_path(@user)
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end

    def appointment_params
      params.require(:appointment).permit(:appointment_comment, :appointment_date, :doctor_id)
    end
end
