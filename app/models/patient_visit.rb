class PatientVisit < ActiveRecord::Base
  has_one :patient
  has_one :prescription
  has_many :disease_conditions
  has_one :user
end
