class CreateDiseaseConditions < ActiveRecord::Migration
  def change
    create_table :disease_conditions do |t|
      t.string :icd_10
      t.references :patient_visit, index: true

      t.timestamps
    end
  end
end
