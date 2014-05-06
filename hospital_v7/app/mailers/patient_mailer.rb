class PatientMailer < ActionMailer::Base
  default from: "from@example.com"

  def new_patient_email(patient)
    puts patient.inspect
    @patient = patient
    mail(to: patient.email, subject: "You have entered the hospital.")
  end
end
