class UpdatePatientConditionToDiseaseCondition < ActiveRecord::Migration
  def change
    
    add_reference :patient_visits, :disease_condition, index: true
  end
end
