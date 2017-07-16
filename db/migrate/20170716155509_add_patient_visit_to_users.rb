class AddPatientVisitToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :patient_visit, index: true
  end
end
