class CreateJoinTablePatientVisitsQuestions < ActiveRecord::Migration
  def change
    create_join_table :Patient_Visits, :Questions do |t|
      # t.index [:patient_visit_id, :question_id]
      # t.index [:question_id, :patient_visit_id]
    end
  end
end
