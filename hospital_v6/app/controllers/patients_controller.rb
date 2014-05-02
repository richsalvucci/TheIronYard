class PatientsController < ApplicationController
  before_filter :find_hospital
  before_filter :find_patient, only: [:show, :edit, :update, :destroy, :xray, :surgery, :billpay, :leaving, :discharge, :doctor, :add_doctor]
  
  def show
    @medication = Medication.all
    @hospitals = Hospital.all
  end

  def new
    @hospitals = Hospital.all
    @patient = @hospital.patients.new 
  end

  def create
    # @hospitals = Hospital.all
    @patient = Patient.create patient_params
    if @patient.save
      flash[:notice] = "Thank You"
      redirect_to hospital_path(@hospital)
    else
      flash[:error] = "Please enter a name."
      render :new
    end
  end

  def edit
    @hospitals = Hospital.all
  end

  def update
    @patient.update_attributes patient_params
    redirect_to hospital_patient_path
  end

  def destroy
    @patient.delete
    redirect_to hospital_patient_path
  end

  def waiting
    @patient.waiting!
    respond_to do |format|
      format.js 
    end
  end

  def doctor
    @patient.go_to_doctor!
    respond_to do |format|
      format.js
    end
  end

  def xray
    @patient.go_to_xray!
    respond_to do |format|
      format.js
    end
  end

  def surgery
    @patient.go_to_surgery!
    respond_to do |format|
      format.js
    end
  end

  def billpay
    @patient.go_to_billpay!
    respond_to do |format|
      format.js
    end
  end

  def leaving
    @patient.discharge!
    respond_to do |format|
      format.js
    end
  end

  def discharge
      # @patient.save 
  end

  def doctor_name
    @doctor = @patient.doctors.new
  end

  def add_doctor 
    @doctor = @patient.doctors.create doctor_params
    redirect_to hospital_patient_path
  end

  def search_names
    @search_names = Patient.search_names params[:q]
  end

private
  def find_patient
    @patient = Patient.find params[:id]
  end
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def patient_params
    params.require(:patient).permit(:name, :description, :workflow_state, :notes, :email, {hospital_ids: []})
  end

  def doctor_params
      params.require(:doctor).permit(:surname)
  end
end