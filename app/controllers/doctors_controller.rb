class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :destroy, :update]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
    render partial: "form"
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  def edit
    render partial: "form"
  end

  def update
    if @doctor.update(doctors_params)
      redirect_to doctors_path
    else
      render :edit
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name)
  end
end
