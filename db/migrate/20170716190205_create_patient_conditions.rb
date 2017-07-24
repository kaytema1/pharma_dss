class CreatePatientConditions < ActiveRecord::Migration
  def change
    create_table :patient_conditions do |t|
      t.integer :patient_id
      t.integer :patient_visit_id
      t.integer :disease_condition_id

      t.timestamps
    end
  end
end
