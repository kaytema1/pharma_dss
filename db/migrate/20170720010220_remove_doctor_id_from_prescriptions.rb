class RemoveDoctorIdFromPrescriptions < ActiveRecord::Migration
  def change
    remove_column :prescriptions, :doctor_id
  end
end
