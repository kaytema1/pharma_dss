class Prescription < ActiveRecord::Base
  belongs_to :patient_visit

  has_and_belongs_to_many :drugs
  has_and_belongs_to_many :doctors
end
