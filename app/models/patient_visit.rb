class PatientVisit < ActiveRecord::Base
  has_one :patient
  has_one :prescription
  has_and_belongs_to_many :disease_conditions
  has_and_belongs_to_many :doctors
  has_and_belongs_to_many :questions
  has_and_belongs_to_many :responses

  accepts_nested_attributes_for  :prescription
  accepts_nested_attributes_for  :doctors
  accepts_nested_attributes_for  :disease_conditions
  accepts_nested_attributes_for  :questions
  accepts_nested_attributes_for  :responses



end
