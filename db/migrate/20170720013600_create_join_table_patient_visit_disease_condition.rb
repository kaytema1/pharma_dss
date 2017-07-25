class CreateJoinTablePatientVisitDiseaseCondition < ActiveRecord::Migration
  def change

    create_join_table :Patient_Visits, :DiseaseConditions do |t|
       #t.index [:patient_visit_id, :disease_condition_id]
       #t.index [:disease_condition_id, :patient_visit_id]
    end
  end
end
