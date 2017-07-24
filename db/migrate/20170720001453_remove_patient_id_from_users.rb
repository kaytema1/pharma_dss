class RemovePatientIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :patient_visit_id
  end
end
