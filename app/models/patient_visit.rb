class PatientVisit < ActiveRecord::Base
  has_one :patient
end
