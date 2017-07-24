class CreateJoinTablePatientVisitDoctor < ActiveRecord::Migration
  def change
    remove_column :patient_visits, :doctor_id
    create_join_table :PatientVisits, :Doctors do |t|
     t.index [:patient_visit_id, :doctor_id]
     t.index [:doctor_id, :patient_visit_id]
    end
  end
end
