class PatientVisit < ActiveRecord::Base
  has_one :patient
  has_one :prescription
end
