class AddRelationshipsToPatientVisit < ActiveRecord::Migration
  def change
    add_reference :patient_visits, :doctor, index: true
    add_reference :patient_visits, :patient, index: true
    add_reference :patient_visits, :prescription, index: true
    add_reference :patient_visits, :patient_condition, index: true
  
  end
end
