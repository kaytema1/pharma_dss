class CreateJoinTablePrescriptionDrug < ActiveRecord::Migration
  def change
    create_join_table :Prescriptions, :Drugs do |t|
       t.index [:prescription_id, :drug_id]
       t.index [:drug_id, :prescription_id]
    end
  end
end
