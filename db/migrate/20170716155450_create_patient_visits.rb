class CreatePatientVisits < ActiveRecord::Migration
  def change
    create_table :patient_visits do |t|
      t.text :summary

      t.timestamps
    end
  end
end
