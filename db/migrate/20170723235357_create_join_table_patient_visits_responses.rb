class CreateJoinTablePatientVisitsResponses < ActiveRecord::Migration
  def change
    create_join_table :Patient_Visits, :Responses do |t|
      # t.index [:patient_visit_id, :response_id]
      # t.index [:response_id, :patient_visit_id]
    end
  end
end
