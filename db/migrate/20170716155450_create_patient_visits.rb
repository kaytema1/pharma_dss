class CreatePatientVisits < ActiveRecord::Migration
  def change
    create_table :patient_visits do |t|
      t.text :summary
      t.references :patient, index: true
      t.references :prescription, index: true
      t.timestamps
    end
  end
end
