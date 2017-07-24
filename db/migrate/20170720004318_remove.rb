class Remove < ActiveRecord::Migration
  def change
    drop_table :patient_conditions
  end
end
