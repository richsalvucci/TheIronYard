class HomeController < ApplicationController
  
  def index
    @patients = Patient.all
    @patients_being_seen = Patient.where.not(workflow_state: 'leaving')
    @patients_completed = Patient.where(workflow_state: 'leaving')
  end
end
