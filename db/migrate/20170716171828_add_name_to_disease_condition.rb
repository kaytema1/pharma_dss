class AddNameToDiseaseCondition < ActiveRecord::Migration
  def change
    add_column :disease_conditions, :name, :string
    remove_column :patient_id
  end
end
