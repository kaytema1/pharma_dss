class RemovePatientConditionId < ActiveRecord::Migration
  def change
    remove_reference :patient_visits, :patient_condition, index: true
  end
end
