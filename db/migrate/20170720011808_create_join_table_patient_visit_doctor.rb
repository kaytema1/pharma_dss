class CreateJoinTablePatientVisitDoctor < ActiveRecord::Migration
  def change
    
    create_join_table :Patient_Visits, :Doctors do |t|
     t.index [:patient_visit_id, :doctor_id]
     t.index [:doctor_id, :patient_visit_id]
    end
  end
end
