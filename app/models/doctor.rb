class Doctor < ActiveRecord::Base
  has_and_belongs_to_many :patient_visits
  has_and_belongs_to_many :prescriptions
end
