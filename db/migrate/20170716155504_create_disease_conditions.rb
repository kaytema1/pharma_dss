class CreateDiseaseConditions < ActiveRecord::Migration
  def change
    create_table :disease_conditions do |t|
      t.string :icd_10
      t.string :name
      

      t.timestamps
    end
  end
end
