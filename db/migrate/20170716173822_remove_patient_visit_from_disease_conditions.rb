class RemovePatientVisitFromDiseaseConditions < ActiveRecord::Migration
  def change
    remove_column :disease_conditions, :patient_visit_id
  end
end
