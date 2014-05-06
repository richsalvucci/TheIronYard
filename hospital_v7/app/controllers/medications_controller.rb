class MedicationsController < ApplicationController
  before_filter :find_hospital
  before_filter :find_patient
  before_filter :find_medication, only: [:show, :edit, :update, :destroy]
  
  def new
    @medication = @patient.medications.new
  end

  def show
  end

  def create
    @medication = @patient.medications.create medication_params
    if @medication.save
      flash[:notice] = "Thank You"
      redirect_to hospital_patient_path(@hospital, @patient)
    else
      flash[:error] = "Please enter a name."
      render :new
    end
  end

  def edit
  end

  def update
    @medication.update_attributes medication_params
    redirect_to hospital_patient_path(@hospital, @patient)
  end

  def destroy
    @medication.delete
    redirect_to hospital_patient_path(@hospital, @patient)
  end

private
  def find_hospital
    @hospital = Hospital.find params[:hospital_id]
  end

  def find_patient
    @patient = Patient.find params[:patient_id]
  end

  def find_medication
    @medication = Medication.find params[:id]
  end

  def medication_params
    params.require(:medication).permit(:name, :dosage)
  end
end
