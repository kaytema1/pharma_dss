class Prescription < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient_visit
end
