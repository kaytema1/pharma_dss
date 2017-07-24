class CreateJoinTablePrescriptionDoctor < ActiveRecord::Migration
  def change
    create_join_table :Prescriptions, :Doctors do |t|
       t.index [:prescription_id, :doctor_id]
       t.index [:doctor_id, :prescription_id]
    end
  end
end
