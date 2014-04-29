class Patient < ActiveRecord::Base
  has_many :medications
  has_many :join_tables
  has_many :hospitals, through: :join_tables
  has_many :doctors, as: :doctorable
  validates :name, presence: true

  before_create :send_patient_email

  def send_patient_email
    PatientMailer.new_patient_email(self).deliver
  end

  scope :search_names, -> search { where("name like?", "%#{search}%") }


  def populate_dropdown
    if workflow_state == 'waiting'
      [['See a Doctor', 'doctor'], ['X-Ray', 'xray'],['Surgery', 'surgery'], ['Leave', 'leaving']]
    elsif workflow_state == 'doctor'
      [ ['X-Ray', 'xray'], ['Surgery', 'surgery'], ['Pay Bill', 'billpay'] ]
    elsif workflow_state == 'xray'
      [['Surgery', 'surgery'],['See a Doctor', 'doctor'], ['Pay Bill', 'billpay']]
    elsif workflow_state == 'surgery'
      [['See a Doctor', 'doctor'], ['X-Ray', 'xray'], ['Pay Bill', 'billpay']]
    elsif workflow_state == 'billpay'
      [['Leave', 'leaving']]
    else[]
    end
  end

  include Workflow
  workflow do
    state :waiting do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :discharge, transitions_to: :leaving

    end
    state :doctor do
      event :go_to_xray, transitions_to: :xray
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :xray do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_surgery, transitions_to: :surgery
      event :go_to_billpay, transitions_to: :billpay
    end
    state :surgery do
      event :go_to_doctor, transitions_to: :doctor
      event :go_to_xray, transitions_to: :xray
      event :go_to_billpay, transitions_to: :billpay
    end
    state :billpay do
      event :discharge, transitions_to: :leaving
    end
    state :leaving do
      event :discharge, transitions_to: :leaving
    end
  end  
end


